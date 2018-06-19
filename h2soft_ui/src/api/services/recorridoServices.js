import auth from '../auth'
const API_URL = process.env.API_URL

// LISTA DE TODOS LAS LLAMADAS AL SERVIDOR
export default {
  test () {
    const authHeader = { headers: auth.getAuthHeader() }
    console.log('api de recorridos', API_URL, authHeader)
  },
  getTemporadas (context) {
    const authHeader = { headers: auth.getAuthHeader() }
    return context.$http.get(API_URL + 'temporada', authHeader).then(res => {
      return res.body.data
    })
  },
  getDias (context) {
    const authHeader = { headers: auth.getAuthHeader() }
    return context.$http.get(API_URL + 'dias', authHeader).then(res => {
      return res.body.data
    })
  },
  getTurnos (context) {
    const authHeader = { headers: auth.getAuthHeader() }
    return context.$http.get(API_URL + 'turnos', authHeader).then(res => {
      return res.body.data
    })
  },
  getFrecuencias (context) {
    const authHeader = { headers: auth.getAuthHeader() }
    return context.$http
      .get(API_URL + 'frecuencia-recorridos', authHeader)
      .then(res => {
        return res.body.data
      })
  },
  getClientes (context) {
    const authHeader = { headers: auth.getAuthHeader() }
    return context.$http
      .get(API_URL + 'clientes' + '/?activo=' + 1, authHeader)
      .then(res => {
        return res.body.data
      })
  },
  getObjetivos (context, id) {
    const authHeader = { headers: auth.getAuthHeader() }
    return context.$http
      .get(
        API_URL + 'objetivos-x-cliente' + '/?idCliente=' + id + '&activo=' + 1,
        authHeader
      )
      .then(res => {
        return res.body.data
      })
  },
  postRecorrido (context, recorrido, detalle) {
    const authHeader = { headers: auth.getAuthHeader() }
    if (recorrido.idRecorridos === null) {
      delete recorrido.idRecorridos
      recorrido.activo = true
      console.log('recorrido sin id', recorrido)
      return context.$http
        .post(API_URL + 'recorridos', recorrido, authHeader)
        .then(recorridoInsertado => {
          console.log('inserté el recorrido', recorridoInsertado)
          detalle.idRecorrido = recorridoInsertado.body.idRecorridos
          return context.$http.post(
            API_URL + 'detalle-recorrido',
            detalle,
            authHeader
          )
        })
        .then(detalleInsertado => {
          console.log('inserté el detalle de recorrido', detalleInsertado)
          return detalle.idRecorrido
        })
        .catch(error => {
          console.log('error insertando recorrido', error)
          return false
        })
    } else {
      console.log('recorrido con id', recorrido)
      detalle.idRecorrido = recorrido.idRecorridos
      return context.$http
        .post(API_URL + 'detalle-recorrido', detalle, authHeader)
        .then(detalleInsertado => {
          console.log('updatié el detalle de recorrido', detalleInsertado)
          return detalle.idRecorrido
        })
        .catch(error => {
          console.log('error updating recorrido', error)
          return false
        })
    }
  },
  getRecorridos (context) {
    const authHeader = { headers: auth.getAuthHeader() }
    return context.$http.get(API_URL + 'recorridos', authHeader).then(r => {
      return r.body.data
    })
  },
  getRecorrido (context, id) {
    const authHeader = { headers: auth.getAuthHeader() }
    return context.$http
      .get(API_URL + 'recorridos/' + id, authHeader)
      .then(r => {
        return r.body
      })
  },
  getRecorridosFull (context, soloActivos = true) {
    const authHeader = { headers: auth.getAuthHeader() }
    // TODO: guardar dia, freq, turno y temp en una variable y comparar con eso
    let info = {}
    let total = []
    let promesas = []
    const activos = soloActivos ? '/?activo=1' : ''
    return context.$http
      .get(API_URL + 'recorridos' + activos, authHeader)
      .then(r => {
        r.body.data.forEach(re => {
          info = {}
          info.recorrido = re.idRecorridos
          info.dia = re.idDia
          info.frecuencia = re.idFrecuencia
          info.turno = re.idTurno
          info.temporada = re.idTemporada
          promesas.push(
            this.populateCamposRecorrido(context, info).then(d => total.push(d))
          )
        })
        return Promise.all(promesas)
      })
      .then(() => {
        return total
      })
      .catch(err => {
        console.error('Error en getRecorridosFull', err)
        return false
      })
  },
  populateCamposRecorrido (context, info) {
    const authHeader = { headers: auth.getAuthHeader() }
    let res = {}
    res.recorrido = info.recorrido
    return context.$http
      .get(API_URL + 'dias/' + info.dia, authHeader)
      .then(dia => {
        res.dia = dia.body.nombre
        return context.$http.get(
          API_URL + 'frecuencia-recorridos/' + info.frecuencia,
          authHeader
        )
      })
      .then(freq => {
        res.frecuencia = freq.body.nombre
        return context.$http.get(API_URL + 'turnos/' + info.turno, authHeader)
      })
      .then(turno => {
        res.turno = turno.body.nombre
        return context.$http.get(
          API_URL + 'temporada/' + info.temporada,
          authHeader
        )
      })
      .then(temp => {
        res.temporada = temp.body.nombre
        return this.checkIfAsignado(context, info.recorrido)
      })
      .then(asignado => {
        res.asignado = asignado
        return res
      })
      .catch(error => {
        console.log('error en el populateCamposRecorrido', error)
        return false
      })
  },
  getDetalleRecorrido (context, id) {
    const authHeader = { headers: auth.getAuthHeader() }
    return context.$http
      .get(API_URL + 'detalle-recorrido' + '/?idRecorrido=' + id, authHeader)
      .then(r => {
        return r.body.data
      })
  },
  getDetalleRecorridosFull (context, id) {
    const authHeader = { headers: auth.getAuthHeader() }
    let info = {}
    let total = []
    let promesas = []
    return context.$http
      .get(API_URL + 'detalle-recorrido' + '/?idRecorrido=' + id, authHeader)
      .then(r => {
        r.body.data.forEach(re => {
          info = {}
          info.detalleRecorrido = re.idDetalleRecorrido
          info.recorrido = re.idRecorrido
          info.objetivo = re.idObjetivo
          info.orden = re.orden
          promesas.push(
            this.populateCamposDetalleRecorrido(context, info).then(d =>
              total.push(d)
            )
          )
        })
        return Promise.all(promesas)
      })
      .then(() => {
        return total
      })
  },
  populateCamposDetalleRecorrido (context, info) {
    const authHeader = { headers: auth.getAuthHeader() }
    let res = {}
    res.detalleRecorrido = info.detalleRecorrido
    res.recorrido = info.recorrido
    res.orden = info.orden
    return context.$http
      .get(API_URL + 'objetivos-x-cliente/' + info.objetivo, authHeader)
      .then(objetivo => {
        res.objetivo = objetivo.body.nombre
        res.direccion = objetivo.body.direccion
        res.localidad = objetivo.body.localidad
        return context.$http.get(
          API_URL + 'clientes/' + objetivo.body.idCliente,
          authHeader
        )
      })
      .then(cliente => {
        res.cliente = cliente.body.razonSocial
        return res
      })
      .catch(error => {
        console.log('error en el getRecorridosFull', error)
        return false
      })
  },
  getObjetivosSinPlanificar (context) {
    const authHeader = { headers: auth.getAuthHeader() }
    let objetivos = {}
    let planificados = {}
    let filtrados = {}
    return context.$http
      .get(API_URL + 'objetivos-x-cliente' + '/?activo=' + 1, authHeader)
      .then(res => {
        objetivos = res.body.data
        return context.$http.get(API_URL + 'detalle-recorrido', authHeader)
      })
      .then(planned => {
        planificados = planned.body.data
        filtrados = objetivos.filter(ob => {
          let flag = true
          planificados.forEach(pl => {
            if (pl.idObjetivo === ob.idObjetivosXCliente) {
              flag = false
            }
          })
          return flag
        })
        let promesas = []
        filtrados.forEach(f => {
          promesas.push(
            context.$http
              .get(API_URL + 'clientes/' + f.idCliente, authHeader)
              .then(c => {
                f.cliente = c.body.razonSocial
              })
          )
        })
        return Promise.all(promesas)
      })
      .then(() => {
        return filtrados
      })
  },
  deleteObjetivoFromRecorrido (context, objetivo, recorrido) {
    const authHeader = { headers: auth.getAuthHeader() }
    // TODO: agregar el nombre del cliente como parametro por si 2 objetivos se llaman igual
    return context.$http
      .get(API_URL + 'objetivos-x-cliente' + '/?nombre=' + objetivo, authHeader)
      .then(obj => {
        let idObjetivo = obj.body.data[0].idObjetivosXCliente
        if (idObjetivo !== undefined) {
          return context.$http.delete(
            API_URL +
              'detalle-recorrido' +
              '/?idObjetivo=' +
              idObjetivo +
              '&idRecorrido=' +
              recorrido,
            authHeader
          )
        } else {
          console.log('No se encontró el id del objetivo buscado')
          return false
        }
      })
      .then(r => {
        return true
      })
      .catch(error => {
        console.log('error al eliminar objetivo de recorrido', error)
        return false
      })
  },
  deleteRecorrido (context, id) {
    const authHeader = { headers: auth.getAuthHeader() }
    return context.$http
      .delete(API_URL + 'detalle-recorrido' + '?idRecorrido=' + id, authHeader)
      .then(() => {
        return context.$http.get(
          API_URL +
            'recorrido-historico' +
            '?idRecorrido=' +
            id +
            '&fechaAsignacion[$gte]=' +
            new Date().toISOString(),
          authHeader
        )
      })
      .then(recorridosHistoricos => {
        recorridosHistoricos = recorridosHistoricos.body.data
        let promesas = []
        recorridosHistoricos.forEach(r =>
          promesas.push(
            context.$http
              .delete(
                API_URL +
                  'detalle-recorrido-historico' +
                  '?idRecorridoHistorico=' +
                  r.idRecorridosHistoricos,
                authHeader
              )
              .then(() => {
                return context.$http.delete(
                  API_URL + 'recorrido-historico/' + r.idRecorridosHistoricos,
                  authHeader
                )
              })
              .then(recorridoHistoricoBorrado => {
                return recorridoHistoricoBorrado.body
              })
          )
        )
        return Promise.all(promesas)
      })
      .then(historicosBorrados => {
        return context.$http.patch(
          API_URL + 'recorridos/' + id,
          { activo: 0 },
          authHeader
        )
      })
      .then(r => {
        return true
      })
      .catch(error => {
        console.error('Error al borrar el recorrido', error)
        return false
      })
  },
  getEmpleados (context) {
    const authHeader = { headers: auth.getAuthHeader() }
    return context.$http.get(API_URL + 'empleados', authHeader).then(res => {
      return res.body.data
    })
  },
  getRepartidores (context) {
    const authHeader = { headers: auth.getAuthHeader() }
    return context.$http
      .get(API_URL + 'users', authHeader)
      .then(users => {
        return users.body.data.filter(u => u.idRol === 3)
      })
      .then(filtrados => {
        let promesas = []
        filtrados.forEach(u =>
          promesas.push(
            context.$http
              .get(API_URL + 'empleados/' + u.idEmpleado, authHeader)
              .then(r => r.body)
          )
        )
        return Promise.all(promesas)
      })
      .then(repartidores => {
        return repartidores
      })
  },
  postAsignacion (context, asignacion) {
    // const authHeader = { headers: auth.getAuthHeader() }
    return this.calcularDiasAsignacion(context, asignacion).then(
      diasAsignacion => {
        const isAsignable = this.checkIfAsignable(
          context,
          asignacion,
          diasAsignacion
        )
        console.log('is asginable', isAsignable)
        return Promise.resolve(true)
      }
    )
    // return context.$http
    //   .post(API_URL + 'recorrido-historico/asignar', asignacion, authHeader)
    //   .then(asignado => {
    //     return true
    //   })
    //   .catch(error => {
    //     console.log('error asignando el recorrido', error)
    //     return false
    //   })
  },
  calcularDiasAsignacion (context, asignacion) {
    const authHeader = { headers: auth.getAuthHeader() }
    const desde = asignacion.fechaDesde.split('/')
    const fechaDesde = new Date(desde[2], desde[1] - 1, desde[0])
    fechaDesde.setHours(0, 0, 0, 0)
    const hasta = asignacion.fechaHasta.split('/')
    const fechaHasta = new Date(hasta[2], hasta[1] - 1, hasta[0])
    fechaHasta.setHours(0, 0, 0, 0)

    return context.$http
      .get(API_URL + 'recorridos/' + asignacion.recorrido, authHeader)
      .then(recorrido => {
        const frecuencia = this.getFrecuencia(
          recorrido.body.idFrecuencia,
          fechaDesde,
          fechaHasta
        )

        const aux = this.getDiaAsignacion(recorrido.body.idDia, fechaDesde)
        let fechasAsignacion = []
        for (let i = 0; i < frecuencia; i++) {
          if (aux < fechaHasta) {
            fechasAsignacion.push(aux.toISOString())
          } else {
            break
          }
          aux.setDate(aux.getDate() + 7)
        }
        return fechasAsignacion
      })
  },
  getFrecuencia (idFrecuencia, fechaDesde, fechaHasta) {
    // retorna cuantas iteraciones han de hacerse según la frecuencia
    // por ej: id 1 = 1 vez por semana -> 4 iteraciones
    // el día inicial, la semana siguiente, la otra semana y la ultima semana de ese mes
    const meses = this.cantMesesEntre(fechaHasta, fechaDesde)
    switch (idFrecuencia) {
      case 1:
        return Math.round(4 * meses)
      case 2:
        return Math.round(2 * meses)
      case 3:
        return Math.round(1 * meses)
    }
  },
  cantMesesEntre (hasta, desde) {
    let diff = (hasta.getTime() - desde.getTime()) / 1000
    diff /= 60 * 60 * 24 * 7 * 4
    // return Math.abs(Math.round(diff));
    return Math.abs(diff)
  },
  getDiaAsignacion (dia, fechaDesde) {
    // Sunday - Saturday : 0 - 6
    // const today = new Date();
    const date = new Date(fechaDesde)

    date.setHours(0)
    if (date.getDay() <= dia) {
      date.setDate(date.getDate() + (dia - date.getDay()))
      return date
    } else {
      date.setDate(date.getDate() + (dia + 7 - date.getDay()))
      return date
    }
  },
  checkIfAsignable (context, asignacion, diasAsignacion) {
    const { recorrido, empleado, fechaDesde, fechaHasta } = asignacion
    const cantCamiones = this.checkCantidadCamiones(context, {
      recorrido,
      fechaDesde,
      fechaHasta,
      diasAsignacion
    })
    console.log('cantidad de camiones', cantCamiones)
    if (!cantCamiones) {
      return { restrictivo: false, message: 'capacidad camiones colmada' }
    }

    const disponibilidadRepartidor = this.checkDisponibilidadRepartidor(
      context,
      {
        empleado,
        recorrido,
        fechaDesde,
        fechaHasta,
        diasAsignacion
      }
    )
    console.log('el repartidor esta ocupado', disponibilidadRepartidor)
    if (disponibilidadRepartidor) {
      return { restrictivo: false, message: 'repartidor ocupado' }
    }

    const objetivosYaAsignados = this.checkAsignacionObjetivos(context)
    console.log('los objetivos ya estan asignados?', objetivosYaAsignados)
    if (!objetivosYaAsignados) {
      return { restrictivo: true, message: 'objetivos ya asignados' }
    }
    return 'todo cool'
  },
  checkCantidadCamiones (
    context,
    { recorrido, fechaDesde, fechaHasta, diasAsignacion }
  ) {
    const authHeader = { headers: auth.getAuthHeader() }
    return context.$http
      .get(API_URL + 'recorridos/' + recorrido, authHeader)
      .then(recorrido => {
        const desde = fechaDesde.split('/')
        fechaDesde = new Date(desde[2], desde[1] - 1, desde[0])
        const hasta = fechaHasta.split('/')
        fechaHasta = new Date(hasta[2], hasta[1] - 1, hasta[0])
        return Promise.all([
          context.$http.get(
            API_URL +
              'recorrido-historico/' +
              '?idDia=' +
              recorrido.body.idDia +
              '&idTurno=' +
              recorrido.body.idTurno +
              '&fechaAsignacion[$gte]=' +
              fechaDesde.toISOString() +
              '&fechaAsignacion[$lt]=' +
              fechaHasta.toISOString(),
            authHeader
          ),
          context.$http.get(API_URL + 'camiones', authHeader)
        ])
      })
      .then(([recorridosAsignados, camiones]) => {
        const recorridosCoincidentes = recorridosAsignados.body.data.filter(r =>
          diasAsignacion.find(dia => r.fechaAsignacion)
        )
        return recorridosCoincidentes.length <= camiones.body.data.length
      })
      .catch(err => {
        console.error(err)
        return false
      })
  },
  checkDisponibilidadRepartidor (
    context,
    { empleado, recorrido, fechaDesde, fechaHasta, diasAsignacion }
  ) {
    const authHeader = { headers: auth.getAuthHeader() }
    return context.$http
      .get(API_URL + 'recorridos/' + recorrido, authHeader)
      .then(recorrido => {
        const desde = fechaDesde.split('/')
        fechaDesde = new Date(desde[2], desde[1] - 1, desde[0])
        const hasta = fechaHasta.split('/')
        fechaHasta = new Date(hasta[2], hasta[1] - 1, hasta[0])
        return context.$http.get(
          API_URL +
            'recorrido-historico/' +
            '?idDia=' +
            recorrido.body.idDia +
            '&idTurno=' +
            recorrido.body.idTurno +
            '&fechaAsignacion[$gte]=' +
            fechaDesde.toISOString() +
            '&fechaAsignacion[$lt]=' +
            fechaHasta.toISOString(),
          authHeader
        )
      })
      .then((recorridosAsignados) => {
        const recorridosCoincidentes = recorridosAsignados.body.data.filter(r =>
          diasAsignacion.find(dia => r.fechaAsignacion)
        )
        return recorridosCoincidentes.find(
          rec => {
            console.log('is rec.idEmpleadoAsignad', rec.idEmpleadoAsignado, '= empleado', empleado, ':', rec.idEmpleadoAsignado === empleado)
            return rec.idEmpleadoAsignado === empleado
          }
        )
      })
      .catch(err => {
        console.error(err)
        return false
      })
  },
  checkAsignacionObjetivos (context, objetivos, fechaDesde, fechaHasta) {
    return true
  },
  checkIfAsignado (context, id) {
    const authHeader = { headers: auth.getAuthHeader() }
    const hoy = new Date()
    const enUnMes = new Date(hoy)
    enUnMes.setDate(hoy.getDate() + 30)
    return context.$http
      .get(
        API_URL +
          'recorrido-historico/' +
          '?idRecorrido=' +
          id +
          '&fechaAsignacion[$gte]=' +
          hoy.toISOString() +
          '&fechaAsignacion[$lt]=' +
          enUnMes.toISOString(),
        authHeader
      )
      .then(r => {
        return context.$http.get(
          API_URL + 'empleados/' + r.body.data[0].idEmpleadoAsignado,
          authHeader
        )
      })
      .then(emple => {
        return { nombre: emple.body.nombre, apellido: emple.body.apellido }
      })
      .catch(() => {
        return false
      })
  },
  getMotivosReasignacion (context) {
    const authHeader = { headers: auth.getAuthHeader() }
    return context.$http
      .get(API_URL + 'motivos-de-reasignacion', authHeader)
      .then(res => {
        return res.body.data
      })
  }
}
