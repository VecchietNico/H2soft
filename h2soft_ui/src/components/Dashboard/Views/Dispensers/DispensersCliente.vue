<template>
  <div class="content">
    <form name="new_dispenser_form">
      <div class="row">
        <div class="col-md-3">
          <!--<label for="cliente"><h4><span class="label label-default">Cliente</span></h4></label>-->
          <slot name="label"><label class="control-label">Cliente</label></slot>

            <dds id="cliente" v-model="idClientes"
                :options="clientes"
                options-value="idClientes"
                options-label="razonSocial"
                search-text="Buscar"
                :placeholder="'Seleccione un cliente'"
                :search="true" :justified="true">
            </dds>

        </div>
          <div class="col-md-4">
            <!--<label for="objetiv"><h4><span class="label label-default">Objetivo</span></h4></label>-->
            <slot name="label"><label class="control-label">Objetivo</label></slot>

            <dds id="objetiv" v-model="idObjetivo"
                :options="objetivos"
                options-value="idObjetivosXCliente"
                options-label="nombre"
                search-text="Buscar"
                :placeholder="this.objetivo_placeholder"
                :search="true" :justified="true">
            </dds>
            <br/>
          </div>

      </div>
    </form>
    <br/>
    <div class="row">
      <div class="col-md-12">
        <div class="card">
          <paper-table type="hover" :title="table1.title" :sub-title="table1.subTitle" :data="table1.data" :columns="table1.columns" :editButton="false" :eraseButton="false" :goButton="false" >
          </paper-table>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
  import PaperTable from 'components/UIComponents/PaperTablePlus.vue'
  import dds from 'vue-strap/src/Select.vue'
  import api from 'src/api/services/clientServices.js'
  import apiDispensers from 'src/api/services/dispensersServices.js'

  const table1Columns = ['Objetivo', 'Dispenser', 'Estado', 'Próximo Mantenimiento']
  export default {
    components: {
      PaperTable,
      dds
    },
    data () {
      return {
        table1: {
          title: 'Dispensers',
          subTitle: 'Dispensers instalados en el cliente',
          columns: [...table1Columns],
          data: []
        },
        dispensers: [],
        clientes: [],
        idClientes: null,
        objetivos: [],
        idObjetivo: null,
        objetivo_placeholder: 'Seleccione un cliente'
      }
    },
    mounted () {
      apiDispensers.getEstadosDispensers(this).then(res => {
        this.estados = res
        this.cargarClientes()
      })
    },
    watch: {
      idClientes: function () {
        this.idObjetivo = null
        this.objetivo_placeholder = 'Seleccione un objetivo'
        this.cargarObjetivos()
        this.cargarDispensers()
      },
      idObjetivo: function () {
        this.cargarDispensersDelObjetivo()
      }
    },
    methods: {
      cargarClientes () {
        api.getClientes(this).then(r => {
          this.clientes = r.body.data
        })
      },
      cargarObjetivos () {
        if (this.idClientes !== null) {
          api.getObjetivos(this, this.idClientes).then(r => {
            this.objetivos = r
          })
        } else {
          this.objetivos = null
        }
      },
      cargarDispensers () {
        this.table1.data = []
        api.getObjetivos(this, this.idClientes)
        .then(res => {
          res.forEach(obj => {
            apiDispensers.getDispensersXObjetivo(this, obj.idObjetivosXCliente)
            .then(res1 => {
              res1.forEach(dis => {
                let disp = {
                  objetivo: '',
                  dispenser: dis.codigo,
                  estado: this.getEstadoDispenser(dis.idEstadoDispenser),
                  'proximomantenimiento': dis.fechaProxMantenimiento === null ? '-' : new Date(dis.fechaProxMantenimiento).toLocaleDateString('es-AR', { year: '2-digit', month: '2-digit', day: '2-digit' })
                }
                this.getObjetivo(dis.idObjetivo)
                .then(res1 => {
                  disp.objetivo = res1.body.data[0].nombre
                  this.table1.data.push(disp)
                  this.table1.data.sort((a, b) => {
                    if (a.dispenser.toLowerCase() > b.dispenser.toLowerCase()) return 1
                    if (a.dispenser.toLowerCase() < b.dispenser.toLowerCase()) return -1
                    return 0
                  })
                })
              })
            })
          })
        })
      },
      cargarDispensersDelObjetivo () {
        this.table1.data = []
        apiDispensers.getDispensersXObjetivo(this, this.idObjetivo)
            .then(res1 => {
              res1.forEach(dis => {
                let disp = {
                  objetivo: '',
                  dispenser: dis.codigo,
                  estado: this.getEstadoDispenser(dis.idEstadoDispenser),
                  'proximomantenimiento': dis.fechaProxMantenimiento === null ? '-' : new Date(dis.fechaProxMantenimiento).toLocaleDateString('es-AR', { year: '2-digit', month: '2-digit', day: '2-digit' })
                }
                this.getObjetivo(dis.idObjetivo)
                .then(res1 => {
                  disp.objetivo = res1.body.data[0].nombre
                  this.table1.data.push(disp)
                  this.table1.data.sort((a, b) => {
                    if (a.dispenser.toLowerCase() > b.dispenser.toLowerCase()) return 1
                    if (a.dispenser.toLowerCase() < b.dispenser.toLowerCase()) return -1
                    return 0
                  })
                })
              })
            })
      },
      getEstadoDispenser (idEstado) {
        for (let i = 0, len = this.estados.length; i < len; i++) {
          if (this.estados[i].idEstadosDispenser === idEstado) {
            return this.estados[i].nombre
          }
        }
      },
      getObjetivo (idObjetivo) {
        return api.getObjetivo(this, idObjetivo)
      }
    }
  }

</script>
<style>

</style>
