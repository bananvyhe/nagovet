<template>
  <div>
    <v-app>
      <v-app-bar  app dense flat hide-on-scroll rounded class="   " color="transparent">
        <v-container class= "navigation ">
          <div class="d-flex d-sm-flex px-2"> 
 
            <div  @click="drawer = true" class="d-flex hidden-sm-and-up">
              <v-icon  class=" ">
                {{mdiMenu}}
              </v-icon>
              <div class="cursor  ">меню</div>
            </div>

            <v-spacer></v-spacer>
            <div class="d-flex align-center">
            <v-card outlined class="d-flex  menu mr-2  d-xs-none d-sm-flex">

              <div  v-for="(item, index) in parts">
                <v-btn
                  x-small text
                  color="primary">
                  {{item}}
                </v-btn> 
              </div>   

            </v-card> 
            </div>
            <div class="d-flex "> 
              <v-btn
                small 

                color="primary">
                Записаться
              </v-btn>             
            </div>

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

      <v-main>
        <v-container class="main">
          <div class="headsite">
            <div class="d-xs-none   d-md-flex head1"></div>
 
            <div class="titleb ">
              <div class="d-xs-none d-sm-flex ludmila"></div>
              <div class="d-xs-none d-sm-flex nagb nagovets"></div>
            </div>
 
            <div class="titles d-flex hidden-sm-and-up"> 
              <div class="ludmila  "></div>
              <div class="nagovets  nags"></div>
              <div class="bgdfa   "> </div>
              <div class="bgdfb  "> </div>
            </div>            
            <div class="head3">
              <div class="frontclouds "></div>
            </div>
          </div>
        </v-container>
        <v-container class=" py-2" >

          <v-row >

            <v-col class=" d-flex flex-column py-1" cols="12"  sm="6" md="7" lg="7" >
              <div class="about "> 
                <div class="bg_books"></div>
                <div class="books"></div>
                <div class="about_block my-0 px-2">
                  <div>
                    <div class="aboutTitle " v-bind:class="{ikses: $vuetify.breakpoint.md || $vuetify.breakpoint.xs}" > 
                      <h2 >Обо мне </h2>
                    </div>
                    <div class="foto"></div>
                <span>
                  Здравствуйте, рада приветствовать Вас на моей страничке!
                  Я – психолог-психоаналитик. Опыт работы - 13 лет.
                  В процессе терапии для меня важно создание безопасной доверительной обстановки, принятия, поддержки и понимания. В такой атмосфере человек получает возможность раскрыться, исследовать свои трудности, а также возможности и ресурсы. Нередко мы неосознанно следуем старым сценариям, которые мешают получать удовольствие от жизни, достигать целей и строить здоровые отношения. Психоаналитическая терапия помогает проложить новые пути, найти выход и изменить качество жизни.  
                </span> 
                  </div>
                </div>              
              </div>
              <div class="konsultBlock mb-3">
                <v-container>
                <h2>Как проходит консультация?</h2><span>
                Хочу немного рассказать о том, как происходит процесс психотерапии.
                На первой консультации я определяю специфику Вашей проблемы и объясняю, как мы будем дальше с этим работать. Многолетний опыт позволяет сделать это быстро и понятно.
                На последующих консультациях мы вместе выявляем неосознанные модели реакций и поведения, которые приводят к проблеме и постепенно меняем их.
                В результате такой совместной работы, Вы сможете справиться с депрессией, тревогой, неуверенностью в себе, стабилизировать эмоциональную сферу.</span>
                </v-container>
              </div>
              <div class="zaprosBlock ">
                <div class="psyholog_bg"></div>
                <div class="psyholog"></div>
                <v-container>
                  <div class="headpsy aboutTitle" v-bind:class="{ikses: $vuetify.breakpoint.xs }">
                    <h2>С какими запросами я работаю?</h2>
                    Я могу Вам помочь:
                  </div>
                  <ul class="list6b">
                    <li>
                      Справиться со страхами, тревожными состояниями, депрессией
                    </li>
                    <li>
                      Стабилизировать эмоциональную сферу
                    </li>
                    <li>
                      Разобраться в себе
                    </li>
                    <li>
                      Избавиться от чувства вины, обиды
                    </li>
                    <li>
                      Справиться с эмоциональной зависимостью от человека
                    </li> 
                    <li>
                      Исследовать причины одиночества и неудачных отношений
                    </li> 
                    <li>
                      Справиться с ревностью и любовной зависимостью
                    </li> 
                    <li>
                      Справиться с раздражительностью, агрессией
                    </li> 
                    <li>
                      Исследовать причины психосоматических заболеваний
                    </li> 
                    <li>
                      Обрести уверенность в себе
                    </li> 
                    <li>
                      Найти внутренние ресурсы и опору в себе
                    </li> 
                  </ul>       
                </v-container>
              </div>
            </v-col>
            
            <v-col class="d-flex" cols="12"    sm="6" md="5" lg="5" >
              <div class="d-flex align-stretch obraz">
                <div >
                  <div class="headpsy aboutTitle d-flex justify-center">
                    <h2>Образование</h2>
                      
                  </div>
                  <v-list-item-content class="py-0 px-4">
                    1. Психологическое: УрГПУ, психолог
преподаватель психологии</v-list-item-content>
<v-list-item-content class="py-1 px-4">
2. Восточно-Европейский Институт Психоанализа
психоаналитик</v-list-item-content>
<div>
 Прошла дополнительное обучение по профессиональным программам: 
</div>

                   <div v-for="(item, index) in items"> 
                    <ul>
                      <li>
                        {{item}}
                      </li>
                    </ul>

                   </div> 
                </div>
              </div>
            </v-col>

          </v-row>

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
      items: ['Поведенческая терапия депрессии (Институт тренинга и психодрамы, Ростов-на-Дону), 2009г.','Поведенческая коррекция межличностных отношений (Институт тренинга и психодрамы, Ростов-на-Дону), 2009г.','Тренинг уверенности в себе (Институт тренинга и психодрамы, Ростов-на-Дону), 2010г.','Рационально-эмоциональная поведенческая терапия (Институт тренинга и психодрамы, Ростов-на-Дону), 2010г.','Супружеская психотерапия (Институт практической психологии и психоанализа, Москва), 2011г.','Системная семейная терапия с подростками (Институт практической психологии и психоанализа, Москва), 2012г.','Техники работы с травмой и разрешение внутренних конфликтов (Институт практической психологии и психоанализа, Москва), 2015г.','Системная семейная терапия субличностей (Институт практической психологии и психоанализа, Москва), 2015г.','Практика телесно-ориентированной терапии (Гильдия психологов, психотерапевтов и тренеров, Москва), 2016 г.',' Эмоционально-фокусированная терапия (Институт практической психологии и психоанализа, Москва), 2016 г.','Схема-терапия (Институт практической психологии и психоанализа, Москва), 2016 г.',' Психологическая помощь при ОСР, ПТСР и кризисных состояниях. Комплексный подход (Гильдия психологов, психотерапевтов и тренеров, Москва), 2017 г.',' Интервенции в психоанализе (Союз профессиональных психоаналитиков, Екатеринбург, 2018 г.','Работа с образами в психологическом консультировании и психотерапии (Гильдия психологов, психотерапевтов и тренеров, Москва), 2019 г.','Эффективные техники для работы с тревогой (Гильдия психологов, психотерапевтов и тренеров, Москва), 2021 г.'],
      benched: 0,
      show: false,
      mdiMenu,
      parts: ['Обо мне','Образование','Как проходит консультация?','Отзывы','Стоимость','Контакты'],
      message: "Психолог Екатеринбург",
      drawer: false,
      group: null,
    }
  },
  mounted(){
    console.log(this.$vuetify.breakpoint)
  },
  computed: {
 
  },
}
</script>

<style >

.obraz{
  
}
.headpsy{
  position: relative;
}
.list6b {
  position: relative;
    padding:0;
    list-style: none;
}
.list6b li{
    padding:0px;

}
.list6b li:before {
   
    padding-right:5px;
    font-weight: bold;
    color: #65ba7a;
    content: "\2714";
    transition-duration: 0.5s;
}
.list6b li:hover:before {
    color: #337AB7;
    content: "\2714";
}    
.zap_text{
/*background-color: #ada;*/
  position: relative;
  /*z-index: 6;*/
}
.psyholog_bg{ 
 border-radius: 25px 10px;
  /*top: 0;*/
  position: absolute;
  background-image: url('./images/psy_bg.jpg');
  background-repeat: repeat-x;
  width: 100%;
  height: 271px;
}
.psyholog{
 border-radius: 25px 10px;
  height: 271px;
  position: absolute;
  width: 100%;
  background-position: right;
  background-image: url('./images/psy.jpg');
}
.konsultBlock, .zaprosBlock, .about_block{
  /*background-color: #dad;*/
  position: relative;
  /*padding-left: 1em;*/


}
.konsultBlock h2, .zaprosBlock h2{
  color: #43a4dc;
  /*padding-left: 1em;*/
}
.education{
 
 border-radius: 12px;
 /*border-top: 32px solid  #43a4dc;*/


}
.education h2{
    /*margin-top: -2em*/
  color: #43a4dc;
    /*text-align: center;*/
  /*background-color: #43a4dc;*/
}
.aboutTitle{
 
  color: #43a4dc;
  /*display: flex;*/
  /*align-self: center;*/
}
.ikses{ 
  white-space: nowrap;
  color: #fff !important;
   /*backdrop-filter: blur(2px);*/
   background-color: rgb(79.688, 71.652, 47.813, .2);
  /*text-shadow: 1px 1px 2px #ffffff;*/
}

.fotoframe{
 
  position: relative;
 
}
/*.blankfoto{
  width: 50px;
}*/
/*.textabout{
  z-index: 5000;

}*/
.textabout span {

  display: inline;
  /*box-shadow: -10px 0 0 rgba(0, 0, 0, 0.5), 10px 0 0 rgba(0, 0, 0, 0.5);*/
  background-color: rgba(255, 255, 255, 0.7);
}
.relative{
  position: relative;
}
.books_bg{
/*  position: absolute;
  top: 0;
  width: 100%;
  height: 239px;
  background-image: url('./images/bg_books.jpg');
    background-repeat: repeat-x;
  border-radius: 25px 10px;*/
}
.books{  
  border-radius: 25px 10px;
  position: absolute;
  /*z-index: 1;*/
  width: 100%;
  height: 239px;
  background-position: right;
  background-image: url('./images/books.jpg');
  /*background-color: #dad;*/
}
 
.abcont{
  position: relative;
  background-color: #dad;
}
.bg_books{
 
  position: absolute;
   height: 239px;
   width: 100%;
   background-image: url('./images/bg_books.jpg');
  background-repeat: repeat-x;
  border-radius: 25px 10px;
}
.foto{

  position: relative;
  border-radius: 25px 10px;
/*  right: 0;
  bottom: 0;*/
  /*position: absolute;*/
  z-index: 4;
  float: right;
  margin-top: -70px;
 
  width: 247px;
  height: 281px;
  background-image: url('./images/foto4.png');
  /*background-color: #dad;*/
}
.about{ 
  /*background-color: #dad;*/
    /*display: table-cell;*/
  /*vertical-align: bottom;*/
  /*flex-direction: column;*/
  position: relative;
  /*z-index: 3;*/
  /*min-height: 239px; */
 border-radius: 25px 10px;
  /*background-repeat: repeat-x;*/
}

.about span{
 
  /*display: inline;*/

  background-color: rgba(255, 255, 255, 0.8);
  /*box-shadow: -10px 0 0 rgba(255, 255, 255, 0.8), 10px 0 0 rgba(255, 255, 255, 0.8);*/
}
.aboutBlock{
  float: left;
  /*background-image: radial-gradient(circle farthest-corner at top right, #49cff5, #fff);*/
}
.cursor{
  cursor: pointer;
}

.bgdfa, .bgdfb{
  
  /*position: absolute;*/
  /*top: 40px;*/
 
  border-radius: 30% 15%;

/*  left: 70px;
  top: 93px;*/
  /*position: absolute;*/
  height: 26px;
  width: 190px;
  /*background-color: #dad*/
  /*backdrop-filter: blur(2px);*/
  background-color: rgb(79.688, 71.652, 47.813, .2);
}
.bgdfa{
  /*background-color: #dad;*/
margin-left: -187px;
margin-top: 14px;
 
}
.bgdfb{
  /*background-color: #ada;*/
  margin-left: -255px;
  margin-top:  42px;
}
.titleb, .titles{
  /*position: absolute;*/
}
.titleb{
  width: 700px;
  position: absolute;
  margin-top: 70px;
  margin-left: 20px;
}
.titles{
  z-index: 5;
  position: absolute;
  margin-top: 80px;
  margin-left: 10px;
 
    height: 40px;
    width: 589;

}
.titleb .nagovets{
    margin-top: -70px;
    margin-left: 220px;
 
}
.titles .nagovets{
    margin-top: -33px;
    margin-left: -155px;
 
}
.titles .ludmila{
 
 
}
.ludmila{
  z-index: 2;
  position: relative;
  width: 250px;
  height: 87px;
  background-image: url('./images/ludmila80.png');
}
.nagovets{
  z-index: 2;
  position: relative;
  height: 82px;
  width: 215px;
  background-image: url('./images/nagovets80.png');
}
.nagb{
/*  margin-left: -30px;
  margin-top: 20px;*/
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
  position: absolute;
  bottom: 0;
}
.main{
  margin-top: -60px;
  position: relative;
  border-right-color: #4dd;
}
.headsite{
  overflow: hidden;
  position: relative;
  /*margin-top: -48px;*/
  /*background-color: #dad;*/
  height: 215px;
    background-repeat: repeat-x;
  background-image: url('./images/head2.jpg');
}
.head1{
  /*float: left;*/
  z-index: 1;
  position: absolute;
  height: 215px;
  width: 201px;
  background-image: url('./images/head1.jpg');
}
.head2{
  /*position: absolute;*/
  height: 215px;
}
.head3{
  z-index: 1;
  position: relative;
  margin-left: auto;
  /*margin-right: 0px;*/
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
.navigation{
  /*background-color: #dad;*/
}
.mes{
  font-size: 1em;
  text-align: center;
}
</style>