// See http://docs.sequelizejs.com/en/latest/docs/models-definition/
// for more of what you can do here.
const Sequelize = require('sequelize');

module.exports = function (app) {
  const sequelizeClient = app.get('sequelizeClient');
  const contratos = sequelizeClient.define('contratos', {
    idContratos: {
      type: Sequelize.INTEGER(11),
      allowNull: false,
      primaryKey: true,
      autoIncrement: true
    },
    idCliente: {
      type: Sequelize.INTEGER(11),
      allowNull: false,
      references: {
        model: 'clientes',
        key: 'idClientes'
      }
    },
    fechaFirma: {
      type: Sequelize.DATE,
      allowNull: false
    },
    fechaVigenciaDesde: {
      type: Sequelize.DATE,
      allowNull: false
    },
    fechaVigenciaHasta: {
      type: Sequelize.DATE,
      allowNull: false
    },

  }, {
    hooks: {
      beforeCount(options) {
        options.raw = true;
      }
    }
  });

  contratos.associate = function (models) { // eslint-disable-line no-unused-vars
    // Define associations here
    // See http://docs.sequelizejs.com/en/latest/docs/associations/
  };

  return contratos;
};
