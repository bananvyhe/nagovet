<template>
  <div>


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
                    Здравствуйте, рада приветствовать Вас на моей страничке!
                    Я – психолог-психоаналитик. Опыт работы - 13 лет.
                    В процессе терапии для меня важно создание безопасной доверительной обстановки, принятия, поддержки и понимания. В такой атмосфере человек получает возможность раскрыться, исследовать свои трудности, а также возможности и ресурсы. Нередко мы неосознанно следуем старым сценариям, которые мешают получать удовольствие от жизни, достигать целей и строить здоровые отношения. Психоаналитическая терапия помогает проложить новые пути, найти выход и изменить качество жизни.  
                    </span> 
                  </div>
                </div>              
              </div>
              <div class="konsultBlock mb-3 mt-2 px-2">
                <h2>Как проходит консультация?</h2>
                <span >
                Хочу немного рассказать о том, как происходит процесс психотерапии.
                На первой консультации я определяю специфику Вашей проблемы и объясняю, как мы будем дальше с этим работать. Многолетний опыт позволяет сделать это быстро и понятно.
                На последующих консультациях мы вместе выявляем неосознанные модели реакций и поведения, которые приводят к проблеме и постепенно меняем их.
                В результате такой совместной работы, Вы сможете справиться с депрессией, тревогой, неуверенностью в себе, стабилизировать эмоциональную сферу.</span>
              </div>
              <div class="zaprosBlock ">
                <div class="psyholog_bg"></div>
                <div class="psyholog"></div>
                <v-container>
                  <div class="headpsy aboutTitle">
                    <h2>С какими запросами я работаю?</h2>
                    Я могу Вам помочь:
                  </div>
                  <ul class="list6b pt-1">
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
            
            <v-col class="know_block d-flex py-0" cols="12"    sm="12" md="6" lg="5" >
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
        <v-container class="rev_block">
          <div class="aboutTitle headpsy d-flex justify-center pb-3">
            <h2>Отзывы</h2>
          </div>
          <masonry-wall :items="reviews" :ssr-columns="1" :column-width="300" :gap="16">
            <template #default="{ item, index }">
              <v-card>
              <div class="px-4 py-3 newsBlock">
                <div>{{ item.description }}</div>
                <div class="d-flex justify-end subtitle-2">{{ item.autor }}</div>
              </div></v-card>
            </template>
          </masonry-wall>
        </v-container>
        <v-container class="price_block">
          <div class="headpsy aboutTitle d-flex justify-center pb-1">
            <h2>Стоимость</h2>
          </div>
        <v-simple-table dense>
          <template v-slot:default>
            <thead>
              <tr>
                <th class="text-left priceHead">
                  <h3>Наименование услуги:</h3>
                </th>
                <th class="text-left priceHead">
                  <h3></h3>
                </th>
                <th class="text-left priceHead">
                  <h3>Длительность:</h3>
                </th>
              </tr>
            </thead>
            <tbody>
              <tr
                v-for="item in services"
                :key="item.name"
              >
                <td>{{ item.name }}</td>
                <td>{{ item.price }}</td>
                <td>{{ item.time }}</td>
              </tr>
            </tbody>
          </template>
        </v-simple-table>
        </v-container>
        <v-container class="contact_block">
          <div class="aboutTitle d-flex justify-center pb-4">
            <h2>Контакты</h2>
          </div>
       
          <!-- <v-row > -->
            <!-- <v-col class=" d-flex flex-column py-1" cols="12"  sm="6" md="6" lg="7" >  -->
              <div class="d-flex flex-column justify-center align-center pb-4"> 

                <h4>Консультирую:</h4>
                <div class="body-1 my-2 mb-1">ОНЛАЙН - по видеосвязи (мессенджеры: Scype, WhatsApp, Viber, Telegram)
                </div>
                <div class="body-1 mt-0 mb-3">ОЧНО - в Екатеринбурге по адресу: Тверитина 34, корпус 5.</div>
                <div  style="position:relative;overflow:hidden;width:100%;">
                  <a href="https://yandex.ru/maps/54/yekaterinburg/?utm_medium=mapframe&utm_source=maps" style="color:#eee;font-size:12px;position:absolute;top:0px;">Екатеринбург</a>
                  <a href="https://yandex.ru/maps/54/yekaterinburg/house/ulitsa_tveritina_34_5/YkkYcAVlQEYEQFtsfXRzc3lgbA==/?ll=60.625933%2C56.822538&source=wizgeo&utm_medium=mapframe&utm_source=maps&z=17" style="color:#eee;font-size:12px;position:absolute;top:14px;">Улица Тверитина, 34/5 — Яндекс Карты</a>
                  <iframe  src="https://yandex.ru/map-widget/v1/-/CCUB6JWA9A"  height="600" frameborder="1" allowfullscreen="true" style="position:relative;width:100%;"></iframe>
                </div>
    <!--         </v-col> -->
<!--             <v-col class=" d-flex flex-column justify-start" cols="12"  sm="6" md="6" lg="5" > 
             
            </v-col> -->
          <!-- </v-row>  -->
          <div class="">
          разработка сайта: <a href="https://pixeltech.ru">pixeltech.ru</a> 
          </div>
                </div> 
              
        </v-container> 
  
  </div>
</template>

<script>

import 'vue2-datepicker/index.css';
  import gsap from "gsap";
  import { mdiMenu } from '@mdi/js'
export default {
 
  data: function () {
    return {
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
      services: [
        {
          name: 'Индивидуальная консультация',
          price: '3500 руб.',
          time: '50 мин.',
        },
        
      ],      
      reviews: [
        { description: 'Людмила помогла увидеть картину с другой стороны и увидеть выход из этого адского замкнутого круга. Это действительно адское состояние, когда пытаешься всем угодить во вред себе, нелюбовь к себе и непонимание себя. Ещё много работы впереди, но уже виден просвет и это радует.',autor: 'Ирина'},
        { description: 'К Людмиле Юрьевне я хожу на психотерапию чуть больше трёх месяцев. Изначально у меня не было конкретного запроса, мне хотелось просто лучше понимать себя. Во время терапии я чувствую поддержку и принятие со стороны Людмилы Юрьевны, и это дает мне стимул к необходимым мне изменениям. Самое важное для меня сейчас - это повышение моего уровня осознанности, избавление от автоматизмов как в мыслях, так и в поведении. Иногда очень сложно узнавать о себе что-то новое, то, чего ты раньше не понимал и не знал. Но это определенно и радостно, потому что теперь хотя бы немного лучше понимаешь себя и свои области, требующие изменений. Хочу поблагодарить Людмилу Юрьевну за работу со мной.',autor: 'Алёна'},
          { description: 'К Людмиле хожу чуть больше полугода. Очень довольна ее работой. Я всегда себя делила на хорошо и плохо но не понимала как это влияет на меня, вроде очевидная вещь но на столько глубоко сидело это что стало уже частью меня. Людмила вывела меня на решение и сейчас мне намного легче и будет ещё лучше. На самом деле ее работа на много больше и глубже и не хватит слов для описания. Я очень рада что есть такой профессионал как Людмила. Спасибо вам большое.',autor: 'Ирина'},
          { description: 'С Л.Ю. Наговец я знакома несколько лет! Людмила Юрьевна всегда приветливая, вежливая, корректная, очень располагает к себе. Ей можно довериться и рассказать свои проблемы, обсудить любой вопрос. На консультациях выявляется проблема, над которой необходимо поработать, даются рекомендации, которые помогают по-другому взглянуть на ситуацию, открыть в себе скрытый потенциал, силы и позитивный настрой! Уважаемая Людмила Юрьевна, благодарю Вас за Ваш труд, за профессионализм и Ваше терпение!',autor: 'Лидия'},
          { description: 'Работали с Людмилой Юрьевной около двух лет с перерывами. Для меня главным результатом было обретение уверенности в себе. Помогла пройти довольно непростой период в жизни. С её помощью научился выстраивать свои границы и уважать границы другого человека. Действительно на консультациях мы создали доверительную, безопасную атмосферу. Довольно глубокая проработка личных переживаний, проблем, на которую я бы наверное никогда не решился. Только положительные отзывы от работы Людмилы Юрьевны! Очень благодарен ей.',autor: 'Дмитрий'},
      ],
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
  methods:{
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
        duration: 1.8,  
        delay: 0.5,
        ease: "expo.out",
          
      })
    }
    var master = gsap.timeline();
    master.add(foto())
    // .add(flash() ) 
    // console.log(this.$vuetify.breakpoint)
  },
  computed: {
 
  },
}
</script>

<style >
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
    margin:2px;
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
  height: 271px;
}
.psyholog{
 border-radius: 10px 10px;
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
  /*background-color: rgb(79.688, 71.652, 47.813, .2);*/
    background-color: rgba(94.629, 156.55, 192.25, 0.4);
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
.titleb{ z-index: 5;
  /*width: 700px;*/
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
    width: 589px;

}
.subti{
  border-radius: 2px;
  font-family: "Roboto Slab";
  padding-left: 5px;
  padding-right: 5px;
  z-index: 1;
}
.titleb .subti{

    margin-top: -4px;
    margin-left: 150px;
 background-color: rgb(79.688, 71.652, 47.813, .1);
  /*color: #222;*/
 color: #fff;
  /*position: relative;*/
  position: absolute;
/*  margin-top: -10px;
  width: 445px;
  margin-left: 30px;*/
  /*background-color: #dad;*/
}
.titles .subti{
  margin-top: 75px;
  margin-left: 33px;

  background-color: rgb(79.688, 71.652, 47.813, .3);
/* margin-top: 68px;
  margin-left: -222px;*/
  color: #fff;

  /*position: relative;*/
  position: absolute;
  
}
.titleb .nagovets{
    margin-top: -92px;
    margin-left: 250px;
 
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
  z-index: 1;
  /*margin-top: -60px;*/
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