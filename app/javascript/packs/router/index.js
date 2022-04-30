import Vue from 'vue'
import Router from 'vue-router'
import Signin from '../components/Signin.vue'
import Signup from '../components/Signup.vue'
import List from '../components/todos/List.vue'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Signin',
      component: Signin
    },
    {
      path: '/signup',
      name: 'Signup',
      component: Signup
    },
    {
      path: '/todos',
      name: 'List',
      component: List
    },
  ],
  mode: 'history'
})