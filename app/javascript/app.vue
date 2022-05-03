<template>
  <div>
    <v-app >
      <headpart></headpart>  

    <v-main>
   
    </v-main>

 <router-view></router-view>

      
    </v-app>    
  </div>
</template>

<script>

import Headpart from './packs/components/head.vue'
import Signin from './packs/components/Signin.vue';
export default {
  components: { Headpart, Signin},
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