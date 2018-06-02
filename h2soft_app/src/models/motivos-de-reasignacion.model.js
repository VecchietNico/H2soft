// See http://docs.sequelizejs.com/en/latest/docs/models-definition/
// for more of what you can do here.
const Sequelize = require('sequelize');

module.exports = function (app) {
  const sequelizeClient = app.get('sequelizeClient');
  const motivosDeReasignacion = sequelizeClient.define('motivos_de_reasignacion', {
    idMotivoDeReasignacion: {
      type: Sequelize.INTEGER(11),
      allowNull: false,
      primaryKey: true,
      autoIncrement: true
    },
    descripcion: {
      type: Sequelize.STRING(55),
      allowNull: false
    },    
  }, {
    hooks: {
      beforeCount(options) {
        options.raw = true;
      }
    }
  });

  motivosDeReasignacion.associate = function (models) { // eslint-disable-line no-unused-vars
    // Define associations here
    // See http://docs.sequelizejs.com/en/latest/docs/associations/
  };

  return motivosDeReasignacion;
};