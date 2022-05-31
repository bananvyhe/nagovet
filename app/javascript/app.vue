<template>
  <div>
    <v-app >
      <headpart></headpart>  

      <v-main>
{{this.logstat}}
        <router-view></router-view>

      </v-main>
    </v-app>    
  </div>
</template>

<script>
 import { mapState } from 'pinia'
import Headpart from './packs/components/head.vue'
import NotFound from './packs/components/404.vue';

import { useLogStore } from 'store.js'

export default {
  components: {
    'headpart': Headpart
  },

  // setup(){
  //   const store  = useLogStore()
  //   return {
  //     store,
  //   };
  //     // store.$subscribe(callback, { detached: true })
  // },
    data: function () {

    return {
      // signIn: localStorage.getItem("signedIn"),
     
    }
  },
  computed: {
    // ...mapState(useLogStore, ['thislog'])
    ...mapState(useLogStore, {
      logstat: "thislog",
    })
  },  

  methods:{
    logfunct(){
      if (localStorage.signedIn) {
        // this.store.$patch({
        //   thislog: true
        // })
      }else{
        // this.store.$patch({
        //   thislog: false
        // })        
      }
    }
  },
  created () {
    console.log("app.vue created")
    console.log(this.logstat)

  },
  mounted(){
    // console.log(thislog);
    // this.logfunct()
    console.log("app.vue mounted")
    console.log(this.logstat)
   
   // console.log(this.store.thislog)
  },

  updated () {
    // this.logfunct()
    console.log("app.vue updated")
    console.log(this.logstat)

  },

}
</script>

<style >

</style>