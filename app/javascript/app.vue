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
        <v-container class=" px-0 d-flex " >
          <div class="aboutBg"> 
            <div class="d-flex justify-end fotoframe">
              <div class="books"></div>
              <div class="foto"></div>
            </div>
            <div class="about px-4 "> 
              <div class="aboutTitle ">
                <h2>Обо мне</h2>
              </div>
              <div>
                        <span>
                  Здравствуйте, рада приветствовать Вас на моей страничке!
                  Я – психолог-психоаналитик. Опыт работы - 13 лет.
                  В процессе терапии для меня важно создание безопасной доверительной обстановки, принятия, поддержки и понимания. В такой атмосфере человек получает возможность раскрыться, исследовать свои трудности, а также возможности и ресурсы. Нередко мы неосознанно следуем старым сценариям, которые мешают получать удовольствие от жизни, достигать целей и строить здоровые отношения. Психоаналитическая терапия помогает проложить новые пути, найти выход и изменить качество жизни.  
                </span>          
              </div>
              
              </div>
            </div>
          <v-col cols="4" class="education d-none d-sm-block">
             
          </v-col>

               
              
                      <!-- <div class="blankfoto"> </div> -->
  
     
                              
   <!--            </v-spacer>

            </v-spacer > -->
         
       

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

<style >
.fotoframe{
  position: relative;
  float: right;
}
.blankfoto{
  width: 50px;
}
.textabout{
  z-index: 5000;

}
.textabout span {

  display: inline;
  /*box-shadow: -10px 0 0 rgba(0, 0, 0, 0.5), 10px 0 0 rgba(0, 0, 0, 0.5);*/
  background-color: rgba(255, 255, 255, 0.7);
}
.relative{
  position: relative;
}
.books{  
  border-radius: 60px 10px;
  position: absolute;
  z-index: 1;
  width: 398px;
  height: 239px;
  background-position: right;
  background-image: url('./images/books.jpg');
  /*background-color: #dad;*/
}
.fotoBlank{
  width: 300px;
  background-color: #ada;
}
.abcont{
  position: relative;
  background-color: #dad;
}
.aboutTitle{
  
}
.foto{
  /*position: relative;*/
  border-radius: 60px 10px;
/*  right: 0;
  bottom: 0;*/
  /*position: absolute;*/
  z-index: 3;
  
  margin-top: -42px;
 
  width: 276px;
  height: 281px;
  background-image: url('./images/foto2.png');
  /*background-color: #dad;*/
}
.education{
 /*background-color: #dad;*/
/*  width: 1400px;*/
 
}
.about{ 
  /*background-color: #dad;*/
    /*display: table-cell;*/
  /*vertical-align: bottom;*/
  /*flex-direction: column;*/
  position: relative;
  z-index: 3;
  height: 239px; 
 
  background-repeat: repeat-x;
}

.about span {
 
  display: inline;
  background-color: rgba(255, 255, 255, 0.8);
  box-shadow: -10px 0 0 rgba(255, 255, 255, 0.8), 10px 0 0 rgba(255, 255, 255, 0.8);
}
.aboutBg{
  background-image: url('./images/bg_books.jpg');
  background-repeat: repeat-x;
  border-radius: 60px 10px;
  /*background-image: radial-gradient(circle farthest-corner at top right, #49cff5, #fff);*/
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