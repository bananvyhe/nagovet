<template>
  <div>
    <v-app>
      <v-app-bar  app dense flat hide-on-scroll rounded class=" py-0 " color="transparent">
        <v-container class="d-flex navigation ">
          <div class="my-0 d-flex justify-start" >
            <v-icon  @click="drawer = true" class="d-sm-none">
              {{mdiMenu}}
            </v-icon>
          </div>
          <v-spacer></v-spacer>
          <v-card outlined class="menu d-flex mr-2">
            <div 
              class="justify-end align-center mx-0 px-0 d-none d-sm-block"
              v-for="(item, index) in parts">
              <v-btn
                x-small text
                color="primary">
                {{item}}
              </v-btn> 
            </div>             
          </v-card>
 
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
        <v-container class="main px-0 py-0">
        <div class="head d-flex">
          <div class="head1 d-none d-md-block"></div>
          <div class="head2 d-none d-md-block"></div>
          <div class="head3 d-flex justify-end align-end"><div class="frontclouds">  </div></div>
        </div>
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
.frontclouds{
   width: 416px;   
   height: 137px;
   background-image: url('./images/frontclouds.png');
}
.main{
  background-repeat: repeat-x;
  background-image: url('./images/head2.jpg');
}
.head1{
  height: 263px;
  width: 201px;
  background-image: url('./images/head1.jpg');
}
.head2{
  height: 263px;
}
.head3{
  margin-left: auto;
  margin-right: 0px;
  float: right;
  height: 263px;
  width: 915px;
  background-image: url('./images/head3.jpg');
  background-position: right;
}
.head{
  margin-top: -48px;
  /*background-color: #dad;*/
  height: 263px;
}
.menu{
  /*border: 1px #999  solid; */
  border-radius:4px;
  background-color: #fff;
}
.mes{
  font-size: 1em;
  text-align: center;
}
</style>