<template>
  <div>
    <v-app>
      <v-app-bar  app dense flat hide-on-scroll rounded class=" py-0 " color="transparent">
        <v-container class="d-flex navigation px-0">
          <div class="my-0 d-flex justify-start" >
            <!-- {{message}}  -->
          <!--    <v-app-bar-nav-icon small @click="drawer = true" class="d-md-none"></v-app-bar-nav-icon> -->
                       <v-icon  @click="drawer = true" class="d-md-none">{{mdiMenu}}</v-icon>
          </div>
          <v-spacer></v-spacer>
          <div class="justify-end align-center menu mx-0 px-0 d-none d-md-block"
            v-for="(item, index) in parts">
             <v-btn
              x-small text
              color="primary">
             {{item}}
            </v-btn> 
           </div>  
            <v-btn
              small 
              color="primary">
              Записаться
            </v-btn>            
          

        </v-container>
      </v-app-bar> 
<v-navigation-drawer
        v-model="drawer" 
        absolute
        temporary
      >
        <v-list
          nav
          dense
        >
          <v-list-item-group
            v-model="group" 
            active-class="deep-purple--text text--accent-4"
          >
          <div v-for="(item, index)   in parts"> 
                        <v-list-item > 
<!--               <v-list-item-icon>
                <v-icon>mdi-home</v-icon>
              </v-list-item-icon> -->
              <v-list-item-title>{{item}}</v-list-item-title>
            </v-list-item>
          </div>

 
          </v-list-item-group>
        </v-list>
      </v-navigation-drawer>


      <v-main>
 
      </v-main>      
    </v-app>
  </div>
</template>

<script>
  import { mdiMenu } from '@mdi/js'
export default {
  data: function () {
    return {
       mdiMenu,
      parts: ['Обо мне','Образование','Как проходит консультация?','Отзывы','Стоимость','Контакты'],
      message: "Психолог Екатеринбург",
      drawer: false,
      group: null,
    }
  }
}
</script>

<style scoped>
 .menu{

  border-radius:4px;
  background-color: #fff;
 }
 .mes{
    font-size: 1em;
  text-align: center;
 
  

 }
</style>