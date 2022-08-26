<template>
  <v-form   @submit.prevent="signin" class="px-3 py-2">
     <div for="email" class="mb-2">Войти на сайт</div>
    <div class="alert alert-danger" v-if="error">{{ error }}</div>
        <v-text-field  class="px-2 pt-2" v-model="email"  :rules="emailRules" type="email" filled id="email" placeholder="email@example.ru">
        </v-text-field>
        <!-- <label for="password">Пароль</label> -->
        <v-text-field class="px-2" v-model="password" type="password" filled id="password" placeholder="Password"></v-text-field>
        <div class="d-flex justify-center">
           <v-btn type="submit" class="btn btn-primary mb-1">Войти</v-btn>
        </div>
     
      <div>
    </div>
  </v-form>
</template>

<script>
  import { mapState } from 'pinia'
  import { mapActions } from 'pinia'
  import { useLogStore } from 'store.js'
export default {
  //  setup() {
  //   const store = uselogStore()
  //   return {
  //     // you can return the whole store instance to use it in the template
  //     store,
  //   }
 
  // },  
  name: 'Signin',
  data () {
    return {
      emailRules: [
        v => !!v || 'E-mail необходим для авторизации',
        v => /.+@.+\..+/.test(v) || 'E-mail введен некорректно',
      ],        
      email: '',
      password: '',
      error: ''
    }
  },
  computed: {

  },    
  created () {
    this.checkSignedIn()
  },
  updated () {
    this.checkSignedIn()
  },
  methods: {
    ...mapActions(useLogStore, ["setCurrentUser"]), 
    ...mapActions(useLogStore, ["unsetCurrentUser"]),  
    // ...mapActions(useLogStore, ["logined"]),    
    // ...mapActions(useLogStore, {
    //   logstat: "logined",
    // }),
    // ...mapActions(useLogStore, {
    //   logstat: "logouted",
    // }),    
    signin () {
      this.$http.plain.post('/signin', { email: this.email, password: this.password })
        .then(response => this.signinSuccessful(response))
        .catch(error => this.signinFailed(error))
    },
    signinSuccessful (response) {
      // this.logined()
      console.log(response)
      console.log("signinSuccessful")
      // console.log(this.logstat)
      if (!response.data.csrf) {
        this.signinFailed(response)
        return
      }
      // console.log(response.data.csrf)
      // localStorage.csrf = response.data.csrf
      // console.log(localStorage.csrf)
      // localStorage.signedIn = true
        this.$http.plain.get('/me')
        .then(meResponse => {
          // this.$store.commit('setCurrentUser', { currentUser: meResponse.data, csrf: response.data.csrf })
          this.setCurrentUser(meResponse.data, response.data.csrf)
          this.error = ''
          // this.$router.replace('/todos')
               this.$router.replace('/')
        })
        .catch(error => this.signinFailed(error))
      // this.$router.replace('/todos')
 
    },
    signinFailed (error) {
       // this.logouted()
      this.error = (error.response && error.response.data && error.response.data.error) || ''
      // delete localStorage.csrf
      // delete localStorage.signedIn
      this.unsetCurrentUser()
      
    },
    checkSignedIn () {
      if (this.signedIn == true) {
 
        // this.$router.replace('/')
        // store.thislog = true
        // uselogStore.$patch({
        //   thislog: true
        // })
      }
    }
  }
}
</script>

<style lang="css">
input:-webkit-autofill { 
    -webkit-background-clip: text;
}
.form-signin {
  /*width: 70%;*/
  /*max-width: 500px;*/
  /*padding: 10% 15px;*/
  /*margin: 0 auto;*/
}
</style>