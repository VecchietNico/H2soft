// Initializes the `recorridoHistorico` service on path `/recorrido-historico`
const createService = require('feathers-sequelize');
const createModel = require('../../models/recorridos-historicos.model');
const hooks = require('./recorridos-historicos.hooks');
const filters = require('./recorridos-historicos.filters');
const logger = require('winston');

module.exports = function() {
  const app = this;
  const Model = createModel(app);
  const paginate = app.get('paginate');

  const options = {
    name: 'recorrido-historico',
    id: 'idRecorridosHistoricos',
    Model,
    paginate
  };

  // Initialize our service with any options it requires
  app.use('/recorrido-historico', createService(options));

  // Get our initialized service so that we can register hooks and filters
  const service = app.service('recorrido-historico');
  app.service('recorrido-historico/asignar', {
    create: function(data, params, callback) {
      return replicarAsignacion(app, data);
    }
  });
  service.hooks(hooks);

  if (service.filter) {
    service.filter(filters);
  }
};

function replicarAsignacion(ap, fullData) {
  console.log('Replicar asignacion', fullData);
  const { asignacion: data, isReasignacion } = fullData;
  let recorrido = null;
  let detallesRecorrido = [];
  const today = new Date();
  today.setHours(0, 0, 0, 0);
  let fechaDesde;
  let fechaHasta;
  return ap.services['recorridos']
    .get(data.recorrido)
    .then(r => {
      recorrido = {
        idDia: r.idDia,
        idFrecuencia: r.idFrecuencia,
        idTurno: r.idTurno,
        idTemporada: r.idTemporada,
        idEstado: 1,
        idEmpleadoAsignado: data.empleado,
        fechaAsignacion: today,
        idRecorrido: data.recorrido
      };
      return ap.services['detalle-recorrido'].find({
        query: { idRecorrido: data.recorrido }
      });
    })
    .then(d => {
      d.data.forEach(det => {
        const detalle = {
          idRecorridoHistorico: null,
          idObjetivo: det.idObjetivo,
          orden: det.orden,
          entregado: 0
        };
        detallesRecorrido.push(detalle);
      });
      let recorridos = [];

      const desde = data.fechaDesde.split('/');
      fechaDesde = new Date(desde[2], desde[1] - 1, desde[0]);
      const hasta = data.fechaHasta.split('/');
      fechaHasta = new Date(hasta[2], hasta[1] - 1, hasta[0]);

      const frecuencia = getFrecuencia(
        recorrido.idFrecuencia,
        fechaDesde,
        fechaHasta
      );
      const aux = getDiaAsignacion(recorrido.idDia, fechaDesde);

      for (let i = 0; i < frecuencia; i++) {
        if (aux < fechaHasta) {
          let recorridoAux = Object.assign({}, recorrido);
          recorridoAux.fechaAsignacion = aux.toISOString();
          recorridoAux.idMotivoDeReasignacion = data.idMotivoDeReasignacion;
          recorridos.push(recorridoAux);
        } else {
          break;
        }
        aux.setDate(aux.getDate() + 7);
      }
      return recorridos;
    })
    .then(aInsertar => {
      return [
        aInsertar,
        ap.services['recorrido-historico'].find({
          query: {
            idRecorrido: data.recorrido,
            fechaAsignacion: {
              $lt: fechaHasta,
              $gt: fechaDesde
            }
          }
        })
      ];
    })
    .then(recorridosAsignados => {
      console.log('recorridos asignados', recorridosAsignados);
      const actualizables = recorridosAsignados.data.filter(oldie => {
        const fechaOldie = new Date(oldie.fechaAsignacion).toDateString();
        return aInsertar.some(newie => {
          const fechaNewie = new Date(newie.fechaAsignacion).toDateString();
          return fechaNewie === fechaOldie;
        });
      });

      const nuevos = aInsertar.filter(newie => {
        const fechaNewie = new Date(newie.fechaAsignacion).toDateString();
        return recorridosAsignados.data.every(oldie => {
          const fechaOldie = new Date(oldie.fechaAsignacion).toDateString();
          return fechaNewie !== fechaOldie;
        });
      });

      console.log('a insertar', aInsertar.length);
      console.log('actualizables', actualizables.length);
      console.log('nuevis', nuevos.length);

      actualizables.forEach(act =>
        promesas.push(
          ap.services['recorrido-historico'].patch(act.idRecorridosHistoricos, {
            idEmpleadoAsignado: data.empleado
          })
        )
      );
      promesas.push(ap.services['recorrido-historico'].create(nuevos));
      console.log('promesas', promesas.length);
      return Promise.all(promesas);
      // return ap.services['recorrido-historico'].create(aInsertar);
    })
    .then(recs => {
      console.log('recorridos insertados', recs);
      let detallesAInsertar = [];
      recs.forEach(r => {
        //let detallesAux = Array.from(detallesRecorrido);
        let detallesAux = detallesRecorrido.slice();
        detallesAux.forEach(d => {
          let aux = Object.assign({}, d);
          aux.idRecorridoHistorico = r.idRecorridosHistoricos;
          detallesAInsertar.push(aux);
        });
      });
      return ap.services['detalle-recorrido-historico'].create(
        detallesAInsertar
      );
    })
    .then(solved => {
      logger.info('Se asignaron los recorridos');
      return true;
    })
    .catch(error => {
      logger.error(error);
    });
}

function getFrecuencia(idFrecuencia, fechaDesde, fechaHasta) {
  // retorna cuantas iteraciones han de hacerse según la frecuencia
  // por ej: id 1 = 1 vez por semana -> 4 iteraciones
  // el día inicial, la semana siguiente, la otra semana y la ultima semana de ese mes
  const meses = cantMesesEntre(fechaHasta, fechaDesde);
  switch (idFrecuencia) {
  case 1:
    return Math.round(4 * meses);
  case 2:
    return Math.round(2 * meses);
  case 3:
    return Math.round(1 * meses);
  }
}

function cantMesesEntre(hasta, desde) {
  let diff = (hasta.getTime() - desde.getTime()) / 1000;
  diff /= 60 * 60 * 24 * 7 * 4;
  // return Math.abs(Math.round(diff));
  return Math.abs(diff);
}

function getDiaAsignacion(dia, fechaDesde) {
  // Sunday - Saturday : 0 - 6
  // const today = new Date();
  const date = new Date(fechaDesde);

  date.setHours(0);
  if (date.getDay() < dia) {
    date.setDate(date.getDate() + (dia - date.getDay()));
    return date;
  } else {
    date.setDate(date.getDate() + (dia + 7 - date.getDay()));
    return date;
  }
}
