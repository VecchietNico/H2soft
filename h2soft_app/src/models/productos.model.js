// See http://docs.sequelizejs.com/en/latest/docs/models-definition/
// for more of what you can do here.
const Sequelize = require('sequelize');

module.exports = function (app) {
  const sequelizeClient = app.get('sequelizeClient');
  const productos = sequelizeClient.define('productos', {
    idProductos: {
      type: Sequelize.INTEGER(11),
      allowNull: false,
      primaryKey: true,
      autoIncrement: true
    },
    nombre: {
      type: Sequelize.STRING(45),
      allowNull: false
    },
    descripcion: {
      type: Sequelize.STRING(45),
      allowNull: true
    },
	tamanio: {
      type: Sequelize.INTEGER(11),
      allowNull: false,
      default: null
    },
  }, {
    hooks: {
      beforeCount(options) {
        options.raw = true;
      }
    }
  });

  productos.associate = function (models) { // eslint-disable-line no-unused-vars
    // Define associations here
    // See http://docs.sequelizejs.com/en/latest/docs/associations/
  };

  return productos;
};
