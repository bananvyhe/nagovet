<template>
<div>
  <v-menu offset-y
    :close-on-content-click="closeOnContentClick">
    <template v-slot:activator="{ on, attrs }">
      <v-btn
        color="success"
        class="mx-1 "
         
        v-bind="attrs"
        v-on="on"
        x-small>
        <div  v-if="signedIn == true">
          Аккаунт      
        </div> 
        <div  v-if="signedIn == false">
          Войти
        </div>
      </v-btn>
    </template>
 
    <v-card elevation="2"
      class="px-2 py-2"
       min-width="244"
      max-width="474">
    <signin v-if="!this.signedIn && regwin == false"></signin>
    <signup v-if="!this.signedIn && regwin == true"></signup>  
    <div class="register d-flex justify-end" v-if="this.signedIn == false">

      <!-- {{this.regwin}} -->
      <v-btn
          class="my-2 align-end"
        @click="regwin = !regwin"
        x-small text
        color="primary"> 
        <div v-if="regwin == true"> 
          Войти
        </div>        
        <div v-if="regwin == false"> 
          Не зарегистрированы? 
        </div>
      </v-btn>  
    
      </div>
      <div v-if="this.signedIn == true" class="d-flex flex-column">
        <div  class="d-flex flex-column">
          {{ this.currentUser.email}}  
          <div class="px-2 py-2 d-flex flex-column">
            <router-link  to="/admin/users" v-if="this.currentUser.role == 'admin'">пользователи</router-link>   
            <!-- <router-link  to="/admin/redactors" v-if="this.currentUser.role == 'admin'">редактор</router-link>             -->
          </div>

        </div> 
        <div   class="d-flex flex-row  justify-space-between">
          <div  class="d-flex ">
            статус: {{ this.currentUser.role}} 
          </div>        
          <div  class="d-flex ">
            <v-btn   
              v-if="this.signedIn == true"
              x-small 
              text
              color="primary"  
              @click="signOut">выйти
            </v-btn>                
          </div>          
        </div>
      </div>
    </v-card>

  </v-menu>   
</div>
</template>

<script>
  import { mapState } from 'pinia'
  import { mapActions } from 'pinia'
  import { useLogStore } from 'store.js'
  import Signin from '../../packs/components/Signin.vue';
  import Signup from '../../packs/components/Signup.vue';
export default {
  components: {Signin, Signup},
  //  setup() {
  //   const store = uselogStore()
  //   return {
  //     // you can return the whole store instance to use it in the template
  //     store,
  //   }
 
  // },  
  name: 'Profile',
  data () {
    return {
      regwin: false,
      closeOnContentClick: false,
      email: '',
      password: '',
      error: ''
    }
  },
  computed: {
    ...mapState(useLogStore, {
      currentUser: "thiscurrentUser",
    }),      
    ...mapState(useLogStore, {
      signedIn: "thissignedIn",
    }),  
  },    
 
  methods: {
    ...mapActions(useLogStore, ["setCurrentUser"]), 
    ...mapActions(useLogStore, ["unsetCurrentUser"]),     
    signOut () {
      this.$http.secured.delete('/signin')
        .then(response => {
          this.unsetCurrentUser()
          this.$router.replace('/')
         })
         .catch(error => this.setError(error, 'Cannot sign out'))
    },   
  }
}
</script>

<style lang="css">
.register{
  cursor: pointer;
}
.form-signin {
  width: 70%;
  max-width: 500px;
  padding: 10% 15px;
  margin: 0 auto;
}
</style>