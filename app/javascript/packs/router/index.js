import Vue from 'vue'
import Router from 'vue-router'
import Content from '../../content.vue'
import Signin from '../components/Signin.vue'
import Signup from '../components/Signup.vue'
import List from '../components/todos/list.vue'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Content',
      component: Content
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
  // mode: 'history'
})