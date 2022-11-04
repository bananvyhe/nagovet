<template>
  <div>
    <div style="display:none;">
      {{role = this.currentUser.role}}
    </div>    
     <v-container class="contact_block pt-0">
          <div class="aboutTitle d-flex justify-center pb-4">
            <h2>Контакты</h2> 
          </div>
              <div class="d-flex flex-column justify-center align-center pb-4"> 

                <h4>Консультирую:</h4>
                  <div class="body-1 my-2 mb-1">                
                    {{contacts[0].desc}}
                    <div class="desc " v-if="role == 'admin'">
                      <v-menu offset-y
                      :close-on-content-click="closeOnContentClick">
                        <template v-slot:activator="{ on, attrs }">
                      <v-btn
                        class="ma-2"
                        color="primary"
                        fab
                        x-small
                        dark 
                        @click="getcont(0)"
                        v-bind="attrs"
                        v-on="on">
                       ред
                      </v-btn> 
                    </template>
                      <v-card elevation="2"
                         min-width="344"
                        max-width="874">
                        <v-form>    
                          <v-col
                            cols="12">
                            <v-textarea
                            filled
                              v-model="econt"
                              label="">
                            </v-textarea>
                          </v-col>

                            <div class="d-flex justify-end">
                              <v-btn
                                class="ma-2"
                                color="success"
                                @click="contitem(1)"
                                small>
                                сохранить
                              </v-btn>
                            </div>                                                  
                        </v-form>
                      </v-card>                    
                  </v-menu>
                    </div>              
                  </div> 
                  <div class="body-1 mt-0 mb-3">
                    {{contacts[1].desc}}
                    <div class="desc" v-if="role == 'admin'">
                      <v-menu offset-y
                      :close-on-content-click="closeOnContentClick">
                        <template v-slot:activator="{ on, attrs }">
                          <v-btn
                            class="ma-2"
                            color="primary"
                            fab
                            x-small
                            dark 
                            @click="getcont(1)"
                            v-bind="attrs"
                            v-on="on">
                           ред
                          </v-btn> 
                        </template>
                        <v-card elevation="2"
                           min-width="344"
                          max-width="874">
                          <v-form>    
                            <v-col
                              cols="12">
                              <v-textarea
                              filled
                                v-model="econt"
                                label="">
                              </v-textarea>
                            </v-col>

                              <div class="d-flex justify-end">
                                <v-btn
                                  class="ma-2"
                                  color="success"
                                  @click="contitem(2)"
                                  small>
                                  сохранить
                                </v-btn>
                              </div>                                                  
                          </v-form>
                        </v-card>                    
                      </v-menu>
                    </div>                                  
                  </div> 
                  <div class="body-1 mt-0 mb-3">
                      {{contacts[2].desc}}
                    <div class="desc" v-if="role == 'admin'">
                      <v-menu offset-y
                      :close-on-content-click="closeOnContentClick">
                        <template v-slot:activator="{ on, attrs }">
                          <v-btn
                            class="ma-2"
                            color="primary"
                            fab
                            x-small
                            dark 
                            @click="getcont(2)"
                            v-bind="attrs"
                            v-on="on">
                           ред
                          </v-btn> 
                        </template>
                        <v-card elevation="2"
                           min-width="344"
                          max-width="874">
                          <v-form>    
                            <v-col
                              cols="12">
                              <v-textarea
                              filled
                                v-model="econt"
                                label="">
                              </v-textarea>
                            </v-col>

                              <div class="d-flex justify-end">
                                <v-btn
                                  class="ma-2"
                                  color="success"
                                  @click="contitem(3)"
                                  small>
                                  сохранить
                                </v-btn>
                              </div>                                                  
                          </v-form>
                        </v-card>                    
                      </v-menu>
                    </div>    

                  </div> 
<!--                 <div class="body-1 my-2 mb-1">ОНЛАЙН - по видеосвязи (мессенджеры: Scype, WhatsApp, Viber, Telegram)
                </div>
                <div class="body-1 mt-0 mb-3">ОЧНО - в Екатеринбурге по адресу: Тверитина 34, корпус 5.</div> -->
 <!-- 
                <v-expansion-panels>
    <v-expansion-panel>
        <v-expansion-panel-header disable-icon-rotate>
          Открыть карту
          <template v-slot:actions>
            <v-icon color="teal">
              mdi-check
            </v-icon>
          </template>
        </v-expansion-panel-header>
        <v-expansion-panel-content> -->
          <div  style="position:relative;overflow:hidden;width:100%;">
          <span v-html="contacts[0].position"></span>
          </div>
<v-container > 
                    <div class=" " v-if="role == 'admin'">редактор карты:
                      <v-menu offset-y
                      :close-on-content-click="closeOnContentClick">
                        <template v-slot:activator="{ on, attrs }">
                      <v-btn
                        class="ma-2"
                        color="primary"
                        fab
                        x-small
                        dark 
                        @click="getcont(5)"
                        v-bind="attrs"
                        v-on="on">
                       ред
                      </v-btn> 
                    </template>
                      <v-card elevation="2"
                         min-width="344"
                        max-width="874">
                        <v-form>    
                          <v-col
                            cols="12">
                            <v-textarea
                            filled
                              v-model="econt"
                              label="">
                            </v-textarea>
                          </v-col>

                            <div class="d-flex justify-end">
                              <v-btn
                                class="ma-2"
                                color="success"
                                @click="contitempos(1)"
                                small>
                                сохранить
                              </v-btn>
                            </div>                                                  
                        </v-form>
                      </v-card>                    
                  </v-menu>
                    </div>      

</v-container>

<!--  
                  <a href="https://yandex.ru/maps/54/yekaterinburg/?utm_medium=mapframe&utm_source=maps" style="color:#eee;font-size:12px;position:absolute;top:0px;">Екатеринбург</a>
                  <a href="https://yandex.ru/maps/54/yekaterinburg/house/ulitsa_tveritina_34_5/YkkYcAVlQEYEQFtsfXRzc3lgbA==/?ll=60.625933%2C56.822538&source=wizgeo&utm_medium=mapframe&utm_source=maps&z=17" style="color:#eee;font-size:12px;position:absolute;top:14px;">Улица Тверитина, 34/5 — Яндекс Карты</a>
                  <iframe  src="https://yandex.ru/map-widget/v1/-/CCUB6JWA9A"  height="600" frameborder="1" allowfullscreen="true" style="position:relative;width:100%;"></iframe>
                </div> -->

     <!--    </v-expansion-panel-content>
      </v-expansion-panel> </v-expansion-panels>
 -->
          <div class="mt-4">
          разработка сайта: <a href="https://pixeltech.ru">pixeltech.ru</a> 
          </div>
                </div> 
              
        </v-container> 
  </div>
</template>

<script>
import { mapState } from 'pinia'
import { mapActions } from 'pinia'
import { useLogStore } from 'store.js'
export default {
 
  data: function () {
    return {
      closeOnContentClick: false,      
      contacts: '',
      econt: ''
    }
  },
  methods: {
    contitempos(dat){
      console.log(dat)      
       this.$http.secured.post('/savecontitem', { id: dat, position: this.econt})
      .then(response => { 
        console.log(response.data)
         this.$http.plain.get('/contacts')
            .then(response => { 
              this.contacts = response.data 
            })
            .catch(error => { this.setError(error, 'Something went wrong') })
 
      })
      .catch(error => { this.setError(error, 'Something went wrong') })     
    },       
    contitem(dat){
      console.log(dat)      
       this.$http.secured.post('/savecontitem', { id: dat, desc: this.econt})
      .then(response => { 
        console.log(response.data)
         this.$http.plain.get('/contacts')
            .then(response => { 
              this.contacts = response.data 
            })
            .catch(error => { this.setError(error, 'Something went wrong') })
 
      })
      .catch(error => { this.setError(error, 'Something went wrong') })     
    },       
    getcont(dat){
       this.$http.plain.get('/contacts')
      .then(response => { 
        this.contacts = response.data 
        if (dat == 5){
          this.econt = response.data[0].position  
        }else{
          this.econt = response.data[dat].desc          
        }

        console.log(response.data )
      })
      .catch(error => { this.setError(error, 'Something went wrong') })

    },
  },
  created () {
    this.getcont()
  },  
  computed: {
    ...mapState(useLogStore, {
      currentUser: "thiscurrentUser",
    }),      
  },      
}
</script>

<style >
  .body-1{
    position: relative;  
  }
 .desc{
  z-index: 10;
  position: absolute;
  top: -18px;
  left: -45px;
  /*padding-top: -30px;*/
  max-width: 880px;
 }
</style>