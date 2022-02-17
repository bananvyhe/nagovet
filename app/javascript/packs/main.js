import Vue from 'vue'
import App from '../app.vue'
// import 'vuetify/dist/vuetify.min.css'
Vue.use(Vuetify, {
  components: {
    VToolbar,
    VApp,
    VAppBar,
    VAppBarNavIcon,
    VContainer,
    VSpacer,
    VMain,
    VBtn,
    VNavigationDrawer,
    VList,
    VListItem,
    VListItemGroup,
    VListItemIcon,
    VIcon,
    VListItemTitle,
  }
}) 
import Vuetify, {
  VToolbar,
  VApp,
  VAppBar,
  VAppBarNavIcon,
  VContainer,
  VSpacer,
  VMain,
  VBtn,
  VNavigationDrawer,
  VList,
  VListItem,
  VListItemGroup,
  VListItemIcon,
  VIcon,
  VListItemTitle,
} from 'vuetify/lib'

document.addEventListener('DOMContentLoaded', () => {

  const apw = new Vue({
  	el: '#app',
  	vuetify: new Vuetify({
		  // theme: { 
		  // 	dark: {
		  // 		primary: '#3b8839',
		  // 	},
		  // },
  	}),
  	// store: store,
    render: h => h(App)
  })
  // document.body.appendChild(app.$el)
})