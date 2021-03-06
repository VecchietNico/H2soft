import auth from 'src/api/auth'
const API_URL = process.env.API_URL

// LISTA DE TODOS LAS LLAMADAS AL SERVIDOR
export default {
  getLocalidades (context) {
    const authHeader = {headers: auth.getAuthHeader()}
    return context.$http.get(API_URL + 'localidades', authHeader)
      .then(res => {
        return res.body.data
      })
  },
  getContratos (context) {
    const authHeader = {headers: auth.getAuthHeader()}
    return context.$http.get(API_URL + 'contratos', authHeader)
  },
  postContratos (context, contrato, detalle) {
    const authHeader = {headers: auth.getAuthHeader()}
    // console.log('llegue al post contratos con:' + JSON.stringify(contrato) + '\n' + JSON.stringify(detalle))
    return context.$http.post(API_URL + 'contratos', contrato, authHeader)
      .then(contratoInsertado => {
        // alert('inserte el cliente')
        detalle.forEach(det => {
          det.idContrato = contratoInsertado.body.idContratos
        })
        let promesas = []
        detalle.forEach(detalle => {
          promesas.push(context.$http.post(API_URL + 'detalles-contrato', detalle, authHeader))
        })
        return Promise.all(promesas)
        // alert('llegue al detalle con:' + JSON.stringify(promesas))
      })
      .then(detalleInsertado => {
        // alert('Se guardo el nuevo Contratp insertado:' + JSON.stringify(detalleInsertado))
        return true
      })
      .catch(error => {
        console.log('algo falló en el insert ' + JSON.stringify(error) + '\n' + error)
        return false
      })
  },
  getClientesContratos (context) {
    const authHeader = {headers: auth.getAuthHeader()}
    return context.$http.get(API_URL + 'clientes' + '/?activo=' + 1, authHeader)
      .then(res => {
        return res.body.data
      })
  },
  getClienteContratos (context, id) {
    const authHeader = {headers: auth.getAuthHeader()}
    return context.$http.get(API_URL + 'clientes/' + id, authHeader)
      .then(res => res.body)
  },
  getProductosContratos (context) {
    const authHeader = {headers: auth.getAuthHeader()}
    return context.$http.get(API_URL + 'productos', authHeader)
      .then(res => {
        return res.body.data
      })
  },
  editarContrato (context, contrato) {
    const authHeader = {headers: auth.getAuthHeader()}
    return context.$http.patch(API_URL + 'contratos/' + contrato.id, contrato, authHeader)
  },
  getContrato (context, idContrato) {
    const authHeader = {headers: auth.getAuthHeader()}
    return context.$http.get(API_URL + 'contratos/?idContratos=' + idContrato, authHeader)
  },
  getDetalleContrato (context, idContrato) {
    const authHeader = {headers: auth.getAuthHeader()}
    return context.$http.get(API_URL + 'detalles-contrato/' + idContrato, authHeader)
      .then(res => {
        return res.body
      })
  },
  getDetallesContrato (context, idContrato) {
    const authHeader = {headers: auth.getAuthHeader()}
    return context.$http.get(API_URL + 'detalles-contrato/?idContrato=' + idContrato, authHeader)
      .then(res => {
        return res.body.data
      })
  },
  getContratoFull (context, id) {
    const authHeader = {headers: auth.getAuthHeader()}
    let info = {}
    return context.$http.get(API_URL + 'contratos/' + id, authHeader)
      .then(con => {
        info['contrato'] = con.body
        return context.$http.get(API_URL + 'detalles-contrato/?idContrato=' + id, authHeader)
      })
      .then(det => {
        info['detalle'] = det.body.data
        return info
      })
      .catch(error => {
        alert('Algo fallo en el getContratoFull' + error)
        return false
      })
  },
  editarContratoFull3 (context, contrato, detalle, id) {
    const authHeader = {headers: auth.getAuthHeader()}
    console.log('llegue a patch con: \n' + JSON.stringify(contrato) + '\n' + JSON.stringify(detalle))
    return context.$http.delete(API_URL + 'detalles-contrato/?idContrato=' + contrato.id, authHeader)
      .then(contElim => {
        return context.$http.patch(API_URL + 'contratos/' + contrato.id, contrato, authHeader)
      })
      .then(contratoModificado => {
        detalle.forEach(det => {
          det.idContrato = contratoModificado.body.idContratos
          det.id = ''
        })
        let promesas = []
        console.log('El detalle es: ' + detalle + ' *** ' + JSON.stringify(detalle))
        detalle.forEach(det => {
          promesas.push(context.$http.post(API_URL + 'detalles-contrato/', det, authHeader))
        })
        return Promise.all(promesas)
      })
      .then(detalle => {
        // alert('update (con detalle) ok' + '\n' + JSON.stringify(detalle))
        return true
      })
      .catch(error => {
        alert('error: ' + JSON.stringify(error) + '\n' + error)
        console.log('error: ' + JSON.stringify(error) + '\n' + error)
        return false
      })
  },
  getContratoXCliente (context, idCliente) {
    const authHeader = {headers: auth.getAuthHeader()}
    let info = {}
    return context.$http.get(API_URL + 'contratos/?idCliente=' + idCliente, authHeader)
      .then(con => {
        const hoy = new Date().toISOString()
        info['contrato'] = null
        con.body.data.forEach(c => {
          if (c.fechaVigenciaDesde < hoy && c.fechaVigenciaHasta > hoy) {
            info['contrato'] = c
          }
        })
        if (info['contrato'] === null) {
          return false
        } else {
          const id = info['contrato'].idContratos
          return context.$http.get(API_URL + 'detalles-contrato/?idContrato=' + id, authHeader)
        }
      })
      .then(det => {
        info['detalle'] = det.body.data
        return info
      })
      .catch(error => {
        console.log('Algo fallo en el getContratoFull' + error)
        return false
      })
  },
  nuevoContratoMayorAlVigente (context, contrato) {
    const authHeader = {headers: auth.getAuthHeader()}
    let firmado = contrato.fechaVigenciaDesde.split('/')
    let fechaDesde = firmado[1] + '/' + firmado[0] + '/' + firmado[2]
    return context.$http.get(API_URL + 'contratos/?fechaVigenciaHasta[$gte]=' + fechaDesde + '&idCliente=' + contrato.idCliente, authHeader)
      .then(res => {
        res = res.body.data
        console.log('Cantidad de contratos menores:' + JSON.stringify(res))
        if (res.length === 0) {
          return true
        } else {
          return false
        }
      })
  }
}
