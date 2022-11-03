<template>
  <div>
    <div style="display:none;">
      {{role = this.currentUser.role}}
    </div>      
  	<v-container class=" py-0 " >
        <v-container class="rev_block py-0 ">
          <div class="aboutTitle headpsy d-flex justify-center pb-3">
            <h2>Отзывы</h2>
          </div>
          <masonry-wall :items="reviews" :ssr-columns="1" :column-width="300" :gap="16">
            <template #default="{ item, index }">
              <v-card>
                <div class="px-4 py-3 newsBlock">
                  <div>{{ item.body }}</div>
                  <div class="d-flex justify-end subtitle-2">{{ item.name }}</div>
                </div>

    <div v-if="role == 'admin'">
                <div class="my-2">
                    <v-menu offset-y
                      :close-on-content-click="closeOnContentClick">
                      <template v-slot:activator="{ on, attrs }">
                        <v-btn
                          class="ma-2"
                          color="primary"
                          fab
                          x-small
                          dark 
                          @click="getitem(item.id)"
                          v-bind="attrs"
                          v-on="on">
                         ред
                        </v-btn>
                         <v-btn
                         class="mx-2"
                         x-small
                          color="primary"
                          @click="hidhandle(item.id)"
                        >
                          {{ hidden ? 'удал' : 'отмена' }}
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
                         min-width="344"
                        max-width="874">
                        <v-form>    
                          <v-col
                            cols="12">
                            <v-textarea
                            filled
                              v-model="ebody"
                              label="">
                            </v-textarea>
                          </v-col>
                          <v-col
                            cols="12">
                            <v-text-field
                            filled
                              v-model="ename"
                              label="">
                            </v-text-field>
                          </v-col>  
                            <div class="d-flex justify-end">
                              <v-btn
                                class="ma-2"
                                color="success"
                                @click="datitem(item.id)"
                                small>
                                сохранить
                              </v-btn>
                            </div>                                                  
                        </v-form>
                      </v-card>
                    </v-menu>   
                  </div>
                </div>
              </v-card>
            </template>
          </masonry-wall>
        </v-container>
   
    <div v-if="role == 'admin'">
      <v-card 
        class="ma-2 pa-2"
        max-width="874">
        <h3>Добавить рецензию:</h3>
          <v-form>
            <v-container >
              <v-row>
                <v-col
                  cols="12"
                  md="6">
                  <v-textarea
                    min-width="544"
                    v-model="abody"
                    filled
                    label="отзыв"
                    required
                  ></v-textarea>
                </v-col>

                <v-col
                  cols="12"
                  md="6">
                  <v-text-field
                    v-model="aname"
                    label="имя"
                    required
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
        </v-card>

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
      abody: '',
      aname: '',
      delitemid: '',
      hidden: true,      
      ename: '',
      ebody: '',
      closeOnContentClick: false,      
      reviews: []  
    }
  },
  computed: {
    ...mapState(useLogStore, {
      currentUser: "thiscurrentUser",
    }),      
  }, 
  methods:  {
    aitem(){
      this.$http.secured.post('/arevitem', {  name: this.aname, body: this.abody})
      .then(response => { 
        console.log(response.data)
        this.$http.plain.get('/reviews')
            .then(response => { 
              this.reviews = response.data 
            })
            .catch(error => { this.setError(error, 'Something went wrong') })
      })
      .catch(error => { this.setError(error, 'Something went wrong') })

    },       
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
      this.$http.secured.delete('/delrevitem/'+ dat)
      .then(response => { 
        
        this.$http.plain.get('/reviews')
            .then(response => { 
              this.reviews = response.data 
            })
            .catch(error => { this.setError(error, 'Something went wrong') })
      })
      .catch(error => { this.setError(error, 'Something went wrong') })

    },           
    datitem(dat){
      console.log(dat)  
       this.$http.secured.post('/saverevitem', { id: dat, name: this.ename, body: this.ebody})
      .then(response => { 
        console.log(response.data)
         this.$http.plain.get('/reviews')
            .then(response => { 
              this.reviews = response.data 
            })
            .catch(error => { this.setError(error, 'Something went wrong') })
 
      })
      .catch(error => { this.setError(error, 'Something went wrong') })     
    },    
    getitem(dat){
      console.log(dat)
      this.$http.plain.post('/getrev', { id: dat})
      .then(response => { 
        console.log(response.data)
        this.ebody = response.data.body
        this.ename = response.data.name
      })
      .catch(error => { this.setError(error, 'Something went wrong') })

    },
  },
	created () {
    console.log("reviews created")
		this.$http.plain.get('/reviews')
      .then(response => { 
        console.log(response.data)
        this.reviews = response.data 
      })
      .catch(error => { this.setError(error, 'Something went wrong') })
  	},  
	}
</script>

<style >
 
</style>