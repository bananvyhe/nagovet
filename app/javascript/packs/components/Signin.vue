<template>
  <v-form class="form-signin" @submit.prevent="signin">
    <div class="alert alert-danger" v-if="error">{{ error }}</div>
      <div class="form-group">
        <label for="email">Войти на сайт</label>
        <v-text-field v-model="email" type="email" class="form-control" id="email" placeholder="email@example.com"></v-text-field>
      </div>
      <div class="form-group">
        <!-- <label for="password">Пароль</label> -->
        <v-text-field v-model="password" type="password" class="form-control" id="password" placeholder="Password"></v-text-field>
      </div>
      <v-btn type="submit" class="btn btn-primary my-3">Sign in</v-btn>
      <div>
      
    </div>
  </v-form>
</template>

<script>
export default {
  name: 'Signin',
  data () {
    return {
      email: '',
      password: '',
      error: ''
    }
  },
  created () {
    this.checkSignedIn()
  },
  updated () {
    this.checkSignedIn()
  },
  methods: {
    signin () {
      this.$http.plain.post('/signin', { email: this.email, password: this.password })
        .then(response => this.signinSuccessful(response))
        .catch(error => this.signinFailed(error))
    },
    signinSuccessful (response) {
      // console.log(response)
      if (!response.data.csrf) {
        this.signinFailed(response)
        return
      }
      // console.log(response.data.csrf)
      localStorage.csrf = response.data.csrf
      // console.log(localStorage.csrf)
      localStorage.signedIn = true
      this.error = ''
      this.$router.replace('/todos')
    },
    signinFailed (error) {
      this.error = (error.response && error.response.data && error.response.data.error) || ''
      delete localStorage.csrf
      delete localStorage.signedIn
    },
    checkSignedIn () {
      if (localStorage.signedIn) {
        this.$router.replace('/todos')
      }
    }
  }
}
</script>

<style lang="css">
.form-signin {
  width: 70%;
  max-width: 500px;
  padding: 10% 15px;
  margin: 0 auto;
}
</style>