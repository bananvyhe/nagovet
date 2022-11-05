<template>
  <div>
     <div style="display:none;">
      {{role = this.currentUser.role}}
    </div> 
        <v-container class="price_block">
          <div class="headpsy aboutTitle d-flex justify-center pb-1">
            <h2>Стоимость</h2>
          </div>
        <v-simple-table dense>
          <template >
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
                <td v-if="role == 'admin'" class="text-left priceHead">
                  редактировать:
                </td>
              </tr>
            </thead>
            <tbody>
              <tr
                v-for="item in prices"
                :key="item.name"> 
                <td>{{ item.name }}</td>
                <td>{{ item.cost }}&nbsp;руб.</td>
                <td>{{ item.duration }}</td>
                <td v-if="role == 'admin'">
                  <div class="my-2">
                    <v-menu offset-y
                      :close-on-content-click="closeOnContentClick">
                      <template v-slot:activator="{ on, attrs }">
                        <v-btn
                          color="primary"
                          fab
                          x-small
                          dark 
                          @click="getitem(item.id)"
                          v-bind="attrs"
                          v-on="on"
                           >
                         ред
                        </v-btn>
                        <!-- {{item.id}} -->
                         <v-btn
                         class="mx-2"
                         x-small
                          color="primary"
                          @click="hidhandle(item.id)"
                        >
                          {{!hidden && item.id == delitemid  ? 'отмена' : 'удал'}}
                        </v-btn>
                        <v-btn
                        absolute
                        right
                          v-show="showdel(item.id)"
                          class="mx-2"
                          color="red"
                          fab
                          x-small
                          dark 
                          @click="delitem(item.id)">
                         удал
                        </v-btn>

                      </template>
                   
                      <v-card elevation="2"
                        class="px-2 py-2"
                         min-width="244"
                        max-width="874">
                            <v-form>
                              <v-container >
                                <v-row>
                                  <v-col
                                    cols="12"
                                    md="4"
                                  >
                                    <v-text-field
                                      v-model="gname"
                                      label="наименование услуги"
                                      required
                                    ></v-text-field>
                                  </v-col>

                                  <v-col
                                    cols="12"
                                    md="4"
                                  >
                                    <v-text-field
                                      v-model="gcost"
                                      label="цена"
                                      required
                                    ></v-text-field>
                                  </v-col>

                                  <v-col
                                    cols="12"
                                    md="4"
                                  >
                                    <v-text-field
                                      v-model="gduration"
                                      label="длительность"  
                                    ></v-text-field>
                                  </v-col>
                                </v-row>
                                <div class="d-flex justify-end">
                                  <v-btn
                                  color="success"
                                  @click="datitem(item.id)"
                                  small>
                                  сохранить
                                </v-btn>
                                </div>
                              </v-container>

                            </v-form>    
                      </v-card>
                    </v-menu>   
                  </div>
                </td>
              </tr>
              &nbsp; 
 
            </tbody>
          </template>
        </v-simple-table>
        <div v-if="role == 'admin'">
          <h3>Добавить услугу:</h3>

             <v-form>
                <v-container >
                  <v-row>
                    <v-col
                      cols="12"
                      md="4"
                    >
                      <v-text-field
                        v-model="aname"
     
     
                        label="наименование услуги"
                        required
                      ></v-text-field>
                    </v-col>

                    <v-col
                      cols="12"
                      md="4"
                    >
                      <v-text-field
                        v-model="acost"
     
                        label="цена"
                        required
                      ></v-text-field>
                    </v-col>

                    <v-col
                      cols="12"
                      md="4"
                    >
                      <v-text-field
                        v-model="aduration"
     
                        label="длительность"
                         
                      ></v-text-field>
                    </v-col>
                  </v-row>
                  <div class="d-flex justify-end">
                    <v-btn
                    color="success"
                    @click="aitem()"
                    small>
                    добавить
                  </v-btn>
                  </div>
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
      delitemid: '',
      hidden: true,
      aduration: '',
      acost: '',
      aname: '',      
      gduration: '',
      gcost: '',
      gname: '',
      closeOnContentClick: false,
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
  methods: {
    showdel(dat){
      if (this.hidden == false && this.delitemid == dat ){
          return true
      }
    },
    hidhandle(dat){
      console.log(dat)
      this.delitemid = dat
      this.hidden = !this.hidden
    },
    delitem(dat){
      this.$http.secured.delete('/delitem/'+ dat)
      .then(response => { 
        
        this.$http.plain.get('/prices')
            .then(response => { 
              this.prices = response.data 
              this.hidden = true
            })
            .catch(error => { this.setError(error, 'Something went wrong') })
      })
      .catch(error => { this.setError(error, 'Something went wrong') })

    },       
    aitem(){
      this.$http.secured.post('/aitem', {  name: this.aname, cost: this.acost, duration: this.aduration})
      .then(response => { 
        console.log(response.data)
        this.$http.plain.get('/prices')
            .then(response => { 
              this.prices = response.data 
            })
            .catch(error => { this.setError(error, 'Something went wrong') })
      })
      .catch(error => { this.setError(error, 'Something went wrong') })

    },   
    getitem(dat){
      console.log(dat)
      this.$http.secured.post('/getitem', { id: dat})
      .then(response => { 
        console.log(response.data)
        this.gname = response.data.name
        this.gcost = response.data.cost
        this.gduration = response.data.duration
      })
      .catch(error => { this.setError(error, 'Something went wrong') })

    },
    datitem(dat){
      console.log(dat)  
       this.$http.secured.post('/saveitem', { id: dat, name: this.gname, cost: this.gcost, duration: this.gduration})
      .then(response => { 
        console.log(response.data)
         this.$http.plain.get('/prices')
            .then(response => { 
              this.prices = response.data 
            })
            .catch(error => { this.setError(error, 'Something went wrong') })
 
      })
      .catch(error => { this.setError(error, 'Something went wrong') })     
    }

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