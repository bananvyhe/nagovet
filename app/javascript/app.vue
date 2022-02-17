<template>
  <div>
    <v-app>
      <v-app-bar  app dense flat hide-on-scroll rounded class=" py-0 " color="transparent">
        <v-container class="d-flex navigation px-0">
          <div class="my-0 d-flex justify-start" >
            <v-icon  @click="drawer = true" class="d-sm-none">
              {{mdiMenu}}
            </v-icon>
          </div>
          <v-spacer></v-spacer>
          <div 
            class="justify-end align-center menu mx-0 px-0 d-none d-sm-block"
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
        temporary>
        <v-list
          nav
          dense>
          <v-list-item-group
            v-model="group" 
            active-class="deep-purple--text text--accent-4">
            <div v-for="(item, index) in parts"> 
              <v-list-item>
                <v-list-item-title>{{item}}</v-list-item-title>
              </v-list-item>
            </div>
          </v-list-item-group>
        </v-list>
      </v-navigation-drawer>

      <v-main >
        <v-container class="main">
<!--         <div class="head d-flex">
          <div class="head1">1</div>
          <div class="head2">2</div>
          <div class="head3 justify-end">3</div>
        </div> -->
        </v-container>
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
.main{
  background-color: #dad;
}
.head1{
  height: 263px;
  width: 201px;
  background-image: url('./images/head1.jpg');
}
.head2{
  height: 263px;
 
 background-repeat: repeat-x;
  background-image: url('./images/head2.jpg');
}
.head3{
  height: 263px;
  width: 915px;
  background-image: url('./images/head3.jpg');
}
.head{
  margin-top: -48px;
 
  /*background-color: #dad;*/
  height: 263px;
 
}
.menu{
  border-radius:4px;
  background-color: #fff;
}
.mes{
  font-size: 1em;
  text-align: center;
}
</style>