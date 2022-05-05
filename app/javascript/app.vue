<template>
  <div>
    <v-app >
      <headpart></headpart>  

      <v-main>

        <router-view></router-view>

      </v-main>
    </v-app>    
  </div>
</template>

<script>

import Headpart from './packs/components/head.vue'
import NotFound from './packs/components/404.vue';
export default {
  components: { Headpart, NotFound},
  data: function () {
    return {
     
    }
  },
  methods:{
  
  },
  mounted(){
   
   
  },
  computed: {
 
  },
}
</script>

<style >

</style>