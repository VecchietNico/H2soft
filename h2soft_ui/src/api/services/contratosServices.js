import auth from 'src/api/auth'
// const API_URL = process.env.API_URL
const authHeader = { headers: auth.getAuthHeader() }

// LISTA DE TODOS LAS LLAMADAS AL SERVIDOR
export default {
  getLocalidades (context) {
    return context.$http.get('http://localhost:3030/localidades', authHeader)
      .then(res => { return res.body.data })
  },
  getContratos (context) {
    return context.$http.get('http://localhost:3030/contratos', authHeader)
  },
  postContratos (context, contrato, detalle) {
   // alert('llegue al post contratos con:' + JSON.stringify(contrato) + '\n' + JSON.stringify(detalle))
    return context.$http.post('http://localhost:3030/contratos', contrato, authHeader)
      .then(contratoInsertado => {
        // alert('inserte el cliente')
        detalle.forEach(det => {
          det.idContrato = contratoInsertado.body.idContratos
        })
        let promesas = []
        detalle.forEach(detalle => {
          promesas.push(context.$http.post('http://localhost:3030/detalles-contrato', detalle, authHeader))
        })
        return promise.all(promesas)
        alert('llegue al detalle con:' + JSON.stringify(promesas))
      })
      .then(detalleInsertado => {
        alert('detalle insertado:' + JSON.stringify(detalleInsertado))
        return true
      })
      .catch(error => {
        alert('algo falló en el insert ' + JSON.stringify(error) + '\n' + error)
        return false
      })
  },
  getClientesContratos (context) {
    return context.$http.get('http://localhost:3030/clientes', authHeader)
      .then(res => { return res.body.data })
  },
  getProductosContratos (context) {
    return context.$http.get('http://localhost:3030/productos', authHeader)
      .then(res => { return res.body.data })
  },
  editarContrato (context, contrato) {
    return context.$http.patch('http://localhost:3030/contratos/' + contrato.id, contrato, authHeader)
  },
  getContrato (context, idContrato) {
    return context.$http.get('http://localhost:3030/contratos/?idContratos=' + idContrato, authHeader)
  },
  getDetalleContrato (context, idContrato) {
    return context.$http.get('http://localhost:3030/detalles-contrato/?idContrato=' + idContrato, authHeader)
      .then(res => { return res.body.data })
  },
  getContratoFull (context, id) {
    let info = {}
    return context.$http.get('http://localhost:3030/contratos/' + id, authHeader)
      .then(con => {
        info['contrato'] = con.body
        return context.$http.get('http://localhost:3030/detalles-contrato/?idContrato=' + id, authHeader)
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
  editarContratoFull (context, contrato, detalle) {
    console.log('llegue a patch con: \n' + JSON.stringify(contrato) + '\n' + JSON.stringify(detalle))
    return context.$http.patch('http://localhost:3030/contratos/' + contrato.id, contrato, authHeader)
      .then(contratoModificado => {
        alert('cpntrato solo modificado')
        detalle.forEach(det => {
          det.idContrato = contratoModificado.body.idContratos
        })
        let promesas = []
        detalle.forEach(det => {
          promesas.push('http://localhost:3030/detalles-contrato/?idContrato=' + contrato.id, det, authHeader)
        })
        return Promise.all(promesas)
      })
      .then(detalle => {
        alert('update (con detalle) ok' + '\n' + JSON.stringify(detalle))
        return true
      })
      .catch(error => {
        alert(JSON.stringify(error) + '\n' + error)
        return false
      })
  }
}
