<template>
  <div>
        <v-container class="price_block">
          <div class="headpsy aboutTitle d-flex justify-center pb-1">
            <h2>Стоимость</h2>
          </div>
        <v-simple-table dense>
          <template v-slot:default>
            <thead>
              <tr>
                <th class="text-left priceHead">
                  <h3>Наименование услуги:</h3>
                </th>
                <th class="text-left priceHead">
                  <h3></h3>
                </th>
                <th class="text-left priceHead">
                  <h3>Длительность:</h3>
                </th>
              </tr>
            </thead>
            <tbody>
              <tr
                v-for="item in prices"
                :key="item.name"
              >
                <td>{{ item.name }}</td>
                <td>{{ item.cost }}&nbsp;руб.</td>
                <td>{{ item.duration }}</td>
                <td>
                  <div class="my-2">
                    <v-btn
                      color="primary"
                      fab
                      x-small
                      dark
                    >
                     ред
                    </v-btn>
                  </div>
                </td>
              </tr>
              &nbsp; 
              <!-- <tr><td></td></tr> -->
            </tbody>
          </template>
        </v-simple-table>


        <div v-if="this.currentUser.role == 'admin'">
          редактор
          <redinput></redinput>
          <v-form v-model="valid">
            <v-container>
              <v-row>
                <v-col
                  cols="12"
                  md="4"
                >
                  <v-text-field
                    v-model="name"
 
 
                    label="наименование услуги"
                    required
                  ></v-text-field>
                </v-col>

                <v-col
                  cols="12"
                  md="4"
                >
                  <v-text-field
                    v-model="cost"
 
                    label="цена"
                    required
                  ></v-text-field>
                </v-col>

                <v-col
                  cols="12"
                  md="4"
                >
                  <v-text-field
                    v-model="duration"
 
                    label="длительность"
                    required
                  ></v-text-field>
                </v-col>
              </v-row>
            </v-container>
          </v-form>          
        </div>   
        </v-container>
  </div>
</template>

<script>
  var cmp = {
    data: function(){
      return {
        name: ''
      };
    },
    template: '<div>12345</div>',
    methods: {

    }
  }
  import { mapState } from 'pinia'
  import { mapActions } from 'pinia'
  import { useLogStore } from 'store.js'
export default {
  components: {
    'redinput': cmp
  },
  data: function () {
    return {
      valid: false,
      name: '',
      cost: '',
      duration: '',
      prices: []  
    }
  },
  created () {
    console.log("reviews created")
    this.$http.plain.get('/prices')
      .then(response => { 
        this.prices = response.data 
      })
      .catch(error => { this.setError(error, 'Something went wrong') })
  },  
  computed: {
    ...mapState(useLogStore, {
      currentUser: "thiscurrentUser",
    }),      
  
  },    
}
</script>

<style >
 
</style>