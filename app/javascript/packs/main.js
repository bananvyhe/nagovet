import Vue from 'vue'

import 'vuetify/dist/vuetify.min.css'
import App from '../app.vue'
import MasonryWall from '@yeger/vue2-masonry-wall'
Vue.use(MasonryWall)
Vue.use(Vuetify, {
  components: {
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