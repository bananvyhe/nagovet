import Vue from 'vue'
import 'vuetify/dist/vuetify.min.css'
import App from '../app.vue'
import MasonryWall from '@yeger/vue2-masonry-wall'
import ru from 'vuetify/src/locale/ru'
import 'vue2-datepicker/locale/ru';
import router from './router'
import VueAxios from 'vue-axios'
import { securedAxiosInstance, plainAxiosInstance } from './backend/axios'
import VueCompositionAPI from '@vue/composition-api'
Vue.use(VueCompositionAPI)
import { createPinia, PiniaVuePlugin} from 'pinia'
const pinia = createPinia()
Vue.use(pinia)
Vue.use(PiniaVuePlugin)

Vue.config.productionTip = false
 Vue.use(VueAxios, {
  secured: securedAxiosInstance,
  plain: plainAxiosInstance
})
// console.log( )
Vue.use(MasonryWall)
Vue.use(Vuetify, {
  components: {
    VHover,
    VDatePicker,
    VTextarea,
    VCardActions,
    VCheckbox,
    VSelect,
    VTextField,
    VForm,
    VDialog,
    VSimpleTable,
    VFlex,
    VVirtualScroll,
    VDivider,
    VExpandTransition,
    VListItemContent,
    VListItemSubtitle,
    VCol,
    VRow,
    VCard,
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
  VHover,
  VDatePicker,
  VTextarea,
  VCardActions,
  VCheckbox,
  VSelect,
  VTextField,
  VForm,
  VDialog,
  VScroll,
  VSimpleTable,
  VFlex,
  VVirtualScroll,
  VDivider,
  VExpandTransition,
  VListItemSubtitle,
  VListItemContent,
  VCol,
  VRow,
  VCard,
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
    router,
    securedAxiosInstance,
    plainAxiosInstance,
  	vuetify: new Vuetify({
      lang: {
        locales: {ru },
        current: 'ru',
      },
		  // theme: { 
		  // 	dark: {
		  // 		primary: '#3b8839',
		  // 	},
		  // },
  	}),
    pinia,
  	// store: store,
    render: h => h(App)
  })
  // document.body.appendChild(app.$el)
})