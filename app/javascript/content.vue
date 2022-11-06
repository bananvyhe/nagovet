<template>
  <div>
    <div style="display:none;">
      {{role = this.currentUser.role}}
    </div> 

    <v-container class=" py-2 " >
      <v-row >
        <v-col class=" d-flex flex-column py-1" cols="12"  sm="12" md="6" lg="7" >
          <div class="about "> 
            <div class="bg_books"></div>
            <div class="books"></div>
            <div class="about_block my-0 px-0" >
              <div>
                <div  id='about_block' class="aboutTitle " v-bind:class="{ikses: $vuetify.breakpoint.md || $vuetify.breakpoint.xs}" > 
                  <h2 >Обо мне </h2>
                </div>
                <div class="foto"></div>
                <span  >
                {{about}}
                </span> 
              </div>
            </div>              
          </div>

          <div class="posred" v-if="role == 'admin'">
            <v-menu offset-y
              :close-on-content-click="closeOnContentClick">
              <template v-slot:activator="{ on, attrs }">
                <v-btn
                  class="ma-2"
                  color="primary"
                  fab
                  x-small
                  dark 
                  @click="getred()"
                  v-bind="attrs"
                  v-on="on">
                 ред
                </v-btn> 
              </template>
              <v-card elevation="2"
                min-width="344"
                max-width="874">
                <v-form>    
                  <v-col
                    cols="12">
                    <v-textarea
                      filled
                      v-model="about"
                      label="">
                    </v-textarea>
                  </v-col>

                  <div class="d-flex justify-end">
                    <v-btn
                      class="ma-2"
                      color="success"
                      @click="reditem()"
                      small>
                      сохранить
                    </v-btn>
                  </div>                                                  
                </v-form>
              </v-card>                    
            </v-menu>
          </div> 

          <div class="konsultBlock mb-3 mt-2 px-2">
            <h2>Как проходит консультация?</h2>
            <span >{{consult}}</span>

          <div class="posred" v-if="role == 'admin'">
            <v-menu offset-y
              :close-on-content-click="closeOnContentClick">
              <template v-slot:activator="{ on, attrs }">
                <v-btn
                  class="ma-2"
                  color="primary"
                  fab
                  x-small
                  dark 
                  @click="getred()"
                  v-bind="attrs"
                  v-on="on">
                 ред
                </v-btn> 
              </template>
              <v-card elevation="2"
                min-width="344"
                max-width="874">
                <v-form>    
                  <v-col
                    cols="12">
                    <v-textarea
                      filled
                      v-model="consult"
                      label="">
                    </v-textarea>
                  </v-col>

                  <div class="d-flex justify-end">
                    <v-btn
                      class="ma-2"
                      color="success"
                      @click="reditem()"
                      small>
                      сохранить
                    </v-btn>
                  </div>                                                  
                </v-form>
              </v-card>                    
            </v-menu>
          </div> 

          </div>
          <div class="zaprosBlock ">
            <div class="psyholog_bg"></div>
            <div class="psyholog"></div>
            <v-container>
              <div class="headpsy aboutTitle">
                <h2>С какими запросами я работаю?</h2>
                Я могу Вам помочь:
              </div>
              <div >
                 <!-- {{req}} -->
              <ul class="list6b pt-1"
                v-for="item in req"
                :key="item.name"> 
                <li>
                  {{item.position}}

                         <v-btn
                         class="mx-2"
                         x-small
                          color="primary"
                          @click="hidhandle(item.id)"
                        >
                          {{!hidden && item.id == delitemid  ? 'отмена' : 'удал'}}
                        </v-btn>
                        <v-btn
                        absolute
                        right
                          v-show="showdel(item.id)"
                          class="mx-2"
                          color="red"
                          fab
                          x-small
                          dark 
                          @click="delitem(item.id)">
                         удал
                        </v-btn>

                </li>
              </ul>

        <div v-if="role == 'admin'"  class="pt-2">
          <h3>Добавить:</h3>

             <v-form>
                <v-container class="pt-0">
                  <v-row>
                    <v-col
                      cols="12"
                      md="4">
                      <v-text-field
                        v-model="position"
                        label="запрос"
                      ></v-text-field>
                    </v-col>
                  </v-row>
                  <div class="d-flex justify-end">
                    <v-btn
                    color="success"
                    @click="aitem()"
                    small>
                    добавить
                  </v-btn>
                  </div>
                </v-container>
              </v-form>    
            </div>


             </div>
          <!--     <ul class="list6b pt-1">
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
              </ul>        -->
            </v-container>
          </div>
        </v-col>
          
        <v-col class="know_block d-flex py-0" cols="12"    sm="12" md="6" lg="5" >
          <div class="d-flex align-stretch obraz">
            <div>
              <div class="headpsy aboutTitle d-flex justify-center">
                <h2>Образование</h2>  
              </div>
              <v-list-item-content class="py-0 px-4">
                1. Психологическое: УрГПУ, психолог
                преподаватель психологии
              </v-list-item-content>
              <v-list-item-content class="py-1 px-4">
                2. Восточно-Европейский Институт Психоанализа
                психоаналитик
              </v-list-item-content>
              <div>
               Прошла дополнительное обучение по профессиональным программам: 
              </div>
              <div v-for="(item, index) in itemkno"> 
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
  </div>
</template>

<script>
  import { mapState } from 'pinia'
  import { mapActions } from 'pinia'
  import { useLogStore } from 'store.js'
import 'vue2-datepicker/index.css';
  import gsap from "gsap";
  import { mdiMenu } from '@mdi/js'
export default {
 
  data: function () {
    return {
      hidden: true,
      position: '',
      req: [],
      closeOnContentClick: false,
      consult: '',
      about: '',
       hours: Array.from({ length: 8 }).map((_, i) => i + 10),
       second: false,
       lang: {
          formatLocale: {
            firstDayOfWeek: 1,
          },
          monthBeforeYear: false,
        },
      time1: null,
      time2: null,
      nameRules: [
        v => !!v || 'Ваше имя?',
        v => (v && v.length <= 20) || 'Вы превысили лимит 20 знаков',
      ],
      email: '',
      emailRules: [
        v => !!v || 'E-mail необходим для связи',
        v => /.+@.+\..+/.test(v) || 'E-mail введен некорректно',
      ],
      valid: true,
      name: '',

      dialog: false,
      // services: [
      //   {
      //     name: 'Индивидуальная консультация',
      //     price: '3500 руб.',
      //     time: '50 мин.',
      //   },
        
      // ],      
      
      itemkno: ['Поведенческая терапия депрессии (Институт тренинга и психодрамы, Ростов-на-Дону), 2009г.','Поведенческая коррекция межличностных отношений (Институт тренинга и психодрамы, Ростов-на-Дону), 2009г.','Тренинг уверенности в себе (Институт тренинга и психодрамы, Ростов-на-Дону), 2010г.','Рационально-эмоциональная поведенческая терапия (Институт тренинга и психодрамы, Ростов-на-Дону), 2010г.','Супружеская психотерапия (Институт практической психологии и психоанализа, Москва), 2011г.','Системная семейная терапия с подростками (Институт практической психологии и психоанализа, Москва), 2012г.','Техники работы с травмой и разрешение внутренних конфликтов (Институт практической психологии и психоанализа, Москва), 2015г.','Системная семейная терапия субличностей (Институт практической психологии и психоанализа, Москва), 2015г.','Практика телесно-ориентированной терапии (Гильдия психологов, психотерапевтов и тренеров, Москва), 2016 г.',' Эмоционально-фокусированная терапия (Институт практической психологии и психоанализа, Москва), 2016 г.','Схема-терапия (Институт практической психологии и психоанализа, Москва), 2016 г.',' Психологическая помощь при ОСР, ПТСР и кризисных состояниях. Комплексный подход (Гильдия психологов, психотерапевтов и тренеров, Москва), 2017 г.',' Интервенции в психоанализе (Союз профессиональных психоаналитиков, Екатеринбург, 2018 г.','Работа с образами в психологическом консультировании и психотерапии (Гильдия психологов, психотерапевтов и тренеров, Москва), 2019 г.','Эффективные техники для работы с тревогой (Гильдия психологов, психотерапевтов и тренеров, Москва), 2021 г.'],
      benched: 0,
      show: false,
      mdiMenu,
      parts: [{name: 'Обо мне', classname:'#about_block'},{name: 'Образование', classname: '.know_block'},{name: 'Как проходит консультация?', classname: '.konsultBlock'},{name:'Отзывы', classname: '.rev_block'},{name:'Стоимость', classname: '.price_block'},{name:'Контакты', classname: '.contact_block'}],
      message: "Психолог Екатеринбург",
      drawer: false,
      group: null,
    }
  },
  created () {
    this.getred()
    this.getreq()
  },  
  methods:{
    showdel(dat){
      if (this.hidden == false && this.delitemid == dat ){
          return true
      }
    },
    hidhandle(dat){
      console.log(dat)
      this.delitemid = dat
      this.hidden = !this.hidden
    },
    delitem(dat){
      this.$http.secured.delete('/delitemreq/'+ dat)
      .then(response => { 
        this.getreq()
        this.hidden = true
      //   this.$http.plain.get('/prices')
      //       .then(response => { 
      //         this.prices = response.data 
      //         this.hidden = true
      //       })
      //       .catch(error => { this.setError(error, 'Something went wrong') })
      })
      .catch(error => { this.setError(error, 'Something went wrong') })

    },     
    aitem(){
      this.$http.secured.post('/aitemzap', {  position: this.position})
      .then(response => { 
       this.getreq()
      })
      .catch(error => { this.setError(error, 'Something went wrong') })

    },       
    reditem(dat){
      console.log(dat)      
       this.$http.secured.post('/saveredtitem', { id: 1, about: this.about, consult: this.consult})
      .then(response => { 
        console.log(response.data)
         this.$http.plain.get('/redactors')
            .then(response => { 
              this.redactors = response.data 
            })
            .catch(error => { this.setError(error, 'Something went wrong') })
 
      })
      .catch(error => { this.setError(error, 'Something went wrong') })     
    },       
    redtel(dat){
       this.$http.plain.get('/contacts')
      .then(response => { 
        
        this.tel = response.data[0].tel
 

        console.log(response.data )
      })
      .catch(error => { this.setError(error, 'Something went wrong') })

    },      
    getred(dat){
       this.$http.plain.get('/redactors')
      .then(response => { 
        this.about = response.data.about
        this.consult = response.data.consult
      })
      .catch(error => { this.setError(error, 'Something went wrong') })
    },
    getreq(){
       this.$http.plain.get('/requests')
      .then(response => { 
        this.req = response.data
      })
      .catch(error => { this.setError(error, 'Something went wrong') })
    },           
    setError (error, text) {
      this.error = (error.response && error.response.data && error.response.data.error) || text
    },
    
    blinkup(ta) {
      // console.log(ta)
      gsap.set(ta, {
        scale: 1,
        // opacity: 0, 
        // x: -30,
        // backgroundPositionX: 165,
      }); 
      var tl =  gsap.timeline();
      tl.to(ta, {
        // scale: 1.008,
          x: -7,
        // backgroundPositionX: 0,
        // opacity: 1, 
        delay: 0.2,
        duration: 0.6 ,  
        ease: "elastic.in",
          
      }).to(ta, {
        scale: 1,
          x: 0,
        // backgroundPositionX: 0,
        // opacity: 1, 
        // delay: 0.7,
        duration: 0.6,  
        ease: "elastic.out",
          
      })    
             
    },
   
    handler: function (da, ta) {
      var offs = 18
      if (da == 'Обо мне'){
        offs = 35
        // console.log(da)
      }
      this.$vuetify.goTo(ta,{ offset: offs })
      this.blinkup(ta) 
      this.drawer = false
      // console.log(da)
      // console.log(ta)
      // $vuetify.goTo('#about_block')
    }
  },
  mounted(){
    function foto() {
      gsap.set(".foto", {
        opacity: 0, 
         
      });

      var tl =  gsap.timeline();
        tl.to(".foto", {
        
        opacity: 1, 
        duration: 1.9,  
        delay: 0.8,
        ease: "expo.out",
          
      })
    }
    var master = gsap.timeline();
    master.add(foto())
    // .add(flash() ) 
    // console.log(this.$vuetify.breakpoint)
  },
  computed: {
    ...mapState(useLogStore, {
      currentUser: "thiscurrentUser",
    }),   
  },
}
</script>

<style >
.posred{
  z-index: 9999;
  position: absolute;
}
.li{
  display: flex;
    justify-content: space-around;
}
.map{
  width: 100%;
}
.priceHead{
  background-color: #edf0eac9;
}
.newsBlock{
  /*background-color: rgba(239.13, 255, 223, 0.4);*/
  background-color: rgba(233.08, 247, 231, 0.3);
  border-radius: 4px;
}
.menbg{
  border-radius: 4px;
  background-color: #fff;
}
.appbar{
  position: relative;
  /*z-index: 5;*/
}
.obraz{
  
}
 
.list6b {
   
  position: relative;

    list-style: none;
}
.list6b li{

    display: inline-block;
    margin:0px;
    padding:0px;
    background-color: rgba(255, 255, 255, 0.8);
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
.list6b li{
  padding-left: 8px;
}  
ul.list6b{
  padding-left: 0px !important;
}
.zap_text{
/*background-color: #ada;*/
  position: relative;
  /*z-index: 6;*/
}
.psyholog_bg{ 
 border-radius: 10px 10px;
  /*top: 0;*/
  position: absolute;
  background-image: url('./images/psy_bg.jpg');
  background-repeat: repeat-x;
  width: 100%;
  height: 351px;
}
.psyholog{
 border-radius: 10px 10px;
  height: 351px;
  position: absolute;
  width: 100%;
  background-position: right;
  background-image: url('./images/psy.jpg');
  background-size: 470px;
}
.zaprosBlock{
  min-height: 280px;
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
.aboutTitle{ position: relative;
  /*background-color: #dad;*/
  margin-left: -12px;
  padding-left: 12px;
  color: #43a4dc;
  /*display: flex;*/
  /*align-self: center;*/
}

.ikses{ 

  white-space: nowrap;
  color: #fff !important;
   /*backdrop-filter: blur(2px);*/
   background-color: rgb(179.688, 171.652, 147.813, .3);
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
  /*background-color: #dad;*/
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
  margin-top: -79px;
 
  width: 247px;
  height: 290px;
  background-image: url('./images/foto10.png');
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

  background-color: rgba(255, 255, 255, 0.9);
  /*box-shadow: -10px 0 0 rgba(255, 255, 255, 0.8), 10px 0 0 rgba(255, 255, 255, 0.8);*/
}
.aboutBlock{
  float: left;
  /*background-image: radial-gradient(circle farthest-corner at top right, #49cff5, #fff);*/
}
.cursor{
  cursor: pointer;
}


.main{
  z-index: 1;
  /*margin-top: -60px;*/
  position: relative;
  border-right-color: #4dd;
}

.menu{
  border-radius:4px;
  background-color: #fff;
  padding-bottom: 2px;
}
.navigation{
  /*background-color: #dad;*/
}
.mes{
  font-size: 1em;
  text-align: center;
}
</style>