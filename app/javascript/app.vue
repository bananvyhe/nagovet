<template>
  <div>
    <v-app>
      <v-app-bar  app dense flat hide-on-scroll rounded class=" py-0 " color="transparent">
        <v-container class="d-flex navigation ">
          <div  @click="drawer = true" class="my-0 d-flex justify-start" >
            <v-icon  class="d-sm-none">
              {{mdiMenu}}
            </v-icon>
            <div class="cursor pl-1 d-sm-none">меню</div>              
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
          <div> 
            <v-btn
              small 
              color="primary">
              Записаться
            </v-btn>             
          </div>          
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
          <div class="head3 d-flex justify-end align-end">
            <div class="frontclouds "></div>
          </div>
          <div class="titleb d-flex"> 
            <div class="ludmila d-none d-sm-block"></div><div class="nagovets d-none d-sm-block nagb"></div>
          </div>
          <div class="bgdf d-sm-none ml-14"></div>
          <div class="bgdf d-sm-none mt-7"></div>
          <div class="titles "> 
            <div class="ludmila d-sm-none"></div><div class="nagovets d-sm-none nags"></div>
          </div>
        </div>
        </v-container>
       <!--  <v-container class="d-flex" >
    
            <v-spacer class="about">
              <div class="foto">
                
              </div>
            </v-spacer >
            <div class="education">
              456
            </div>            
       

        </v-container> -->
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

<style >
.foto{
  z-index: 1000;
  position: relative;
  margin-top: -85px;
  float: right;
  width: 282px;
  height: 324px;
  background-image: url('./images/foto.png');
}
.education{
  width: 300px;
  float: right;
}
.about{
  height: 239px; 
  background-image: url('./images/bg_books.jpg');
  background-repeat: repeat-x;
}
.cursor{
  cursor: pointer;
}
.bgdf{
  left: 70px;
  top: 83px;
  position: absolute;
  height: 28px;
  width: 185px;
  /*background-color: #dad*/
  backdrop-filter: blur(2px);
}
.titleb, .titles{
  position: absolute;
}
.titleb{
  margin-top: 52px;
  margin-left: 20px;
}
.titles{
  margin-top: 70px;
  margin-left: 10px;


}
.ludmila{
  width: 250px;
  height: 87px;
  background-image: url('./images/ludmila80.png');
}
.nagovets{
  height: 82px;
  width: 215px;
  background-image: url('./images/nagovets80.png');
}
.nagb{
  margin-left: -30px;
  margin-top: 20px;
}
.nags{
  margin-left: 82px;
  margin-top: -120px;
}
.frontclouds{
  width: 100%;   
  height: 121px;
  background-image: url('./images/frontclouds.png');
  background-position: right;
}
.main{
  background-repeat: repeat-x;
  background-image: url('./images/head2.jpg');
}
.head{
  position: relative;
  margin-top: -48px;
  /*background-color: #dad;*/
  height: 215px;
}
.head1{
  height: 215px;
  width: 201px;
  background-image: url('./images/head1.jpg');
}
.head2{
  height: 215px;
}
.head3{
  margin-left: auto;
  margin-right: 0px;
  float: right;
  height: 215px;
  width: 915px;
  background-image: url('./images/head3.jpg');
  background-position: right;
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