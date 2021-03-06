// Initializes the `contratos` service on path `/contratos`
const createService = require('feathers-sequelize');
const createModel = require('../../models/contratos.model');
const hooks = require('./contratos.hooks');
const filters = require('./contratos.filters');

module.exports = function () {
  const app = this;
  const Model = createModel(app);
  const paginate = app.get('paginate');

  const options = {
    name: 'contratos',
    id: 'idContratos',
    Model,
    paginate
  };

  // Initialize our service with any options it requires
  app.use('/contratos', createService(options));

  // Get our initialized service so that we can register hooks and filters
  const service = app.service('contratos');

  service.hooks(hooks);

  if (service.filter) {
    service.filter(filters);
  }
};
