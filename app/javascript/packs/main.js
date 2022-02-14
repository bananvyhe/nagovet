import Vue from 'vue'
import App from '../app.vue'
	console.log("Vue")
document.addEventListener('DOMContentLoaded', () => {

  const apw = new Vue({
  	el: '#app',
  	// vuetify: new Vuetify({
		 //  theme: { 
		 //  	dark: {
		 //  		primary: '#3b8839',
		 //  	},
		 //  },
  	// }),
  	// store: store,
    render: h => h(App)
  })
  // document.body.appendChild(app.$el)
})