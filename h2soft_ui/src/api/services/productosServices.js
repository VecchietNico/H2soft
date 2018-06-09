import auth from '../auth'
const API_URL = process.env.API_URL

// LISTA DE TODOS LAS LLAMADAS AL SERVIDOR
export default {
  getProductos (context) {
    const authHeader = { headers: auth.getAuthHeader() }
    return context.$http.get(API_URL + 'productos', authHeader)
      .then(res => { return res.body.data })
  },
  getProductoXId (context, idProducto) {
    const authHeader = { headers: auth.getAuthHeader() }
    return context.$http.get(API_URL + 'productos/?idProductos=' + idProducto, authHeader)
      .then(res => { return res.body.data })
  },
  postProducto (context, producto) {
    const authHeader = { headers: auth.getAuthHeader() }
    return context.$http.post(API_URL + 'productos', producto, authHeader)
      .then(clienteInsertado => {
        console.log('inserté el producto')
        return clienteInsertado
      })
    .catch(error => {
      console.log('algo falló en el insert ', error)
      return false
    })
  },
  editProducto (context, id, producto) {
    const authHeader = { headers: auth.getAuthHeader() }
    return context.$http.patch(API_URL + 'productos/' + id, producto, authHeader)
      .then(prodUpdated => {
        return true
      })
      .catch(error => {
        console.log('algo falló en el update ', error)
        return false
      })
  }
}
