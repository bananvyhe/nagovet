   <template>  
    <div>
      <v-app-bar dense fixed flat hide-on-scroll rounded color="transparent" class="appbar">
        <v-container class= "px-0">
          <div class="d-flex d-sm-flex px-2" > 
            <v-hover>
              <template v-slot:default="{ hover }">
                <div  @click="drawer = true" class="d-flex hidden-sm-and-up menbg px-2 py-1" :class="`elevation-${hover ? 6 : 4}`">
                  <v-icon  class=" ">
                  {{mdiMenu}}
                  </v-icon>
                  <div class="cursor">меню</div>
                </div>
              </template>

            </v-hover>
            <!-- <v-btn  @click="handler">234</v-btn> -->
            <v-spacer></v-spacer>



            <div class="d-flex align-center">
              <router-link to="/Signup">Sign up</router-link>
              <router-link to="/Signin">Sign in</router-link>
              <v-btn
                x-small 
                text
                color="primary"  
                @click="signOut">выйти
              </v-btn>              
            </div>



            <div class="d-flex align-center">
            <v-card outlined class="d-flex menu mr-2 d-xs-none d-sm-flex">

              <div  v-for="(item, index) in parts">
                <v-btn
                  @click="handler(item.name, item.classname)"
                  x-small text
                  color="primary">
                  {{item.name}}
                </v-btn> 
              </div>   

            </v-card> 
            </div>






      <v-dialog
        v-model="dialog"
        width="500">
        <template v-slot:activator="{ on, attrs }" >
          <v-btn
            small 
            color="primary"
            dark
            v-bind="attrs"
            v-on="on"
          >
            Записаться
          </v-btn>
        </template>
        <v-card>
 
          <v-form
            class="mx-3 pt-2"
            ref="form"
            v-model="valid"
            lazy-validation>
            <v-text-field
              v-model="name"
              :counter="20"
              :rules="nameRules"
              label="Как к вас зовут?"
              required>
            </v-text-field>
            <v-text-field
              v-model="email"
              :rules="emailRules"
              label="E-mail"
              required>
            </v-text-field>
            <v-textarea
              filled
              name="input-7-4"
              label="Задайте вопрос"
              value="">
            </v-textarea>
<!--             <v-select
              v-model="select"
              :items="items"
              :rules="[v => !!v || 'Item is required']"
              label="Item"
              required
            ></v-select>

            <v-checkbox
              v-model="checkbox"
              :rules="[v => !!v || 'You must agree to continue!']"
              label="Do you agree?"
              required
            ></v-checkbox> -->

          <!--     <v-btn
              :disabled="!valid"
              color="success"
              class="mr-4"
              @click="validate"
            >
              Validate
            </v-btn>

            <v-btn
              color="error"
              class="mr-4"
              @click="reset"
            >
              Reset Form
            </v-btn>

            <v-btn
              color="warning"
              @click="resetValidation"
            >
              Reset Validation
            </v-btn> -->

            <date-picker 
              class="ma-2"
              :lang="lang"
              :disabled-date="disabledDate"
              v-model="time1" 
              valueType="format"
              placeholder="дата приема">
            </date-picker>
            <date-picker
              class="ma-2"
              v-model="time2"
              :time-picker-options="{
                start: '08:00',
                step: '01:00',
                end: '18:00',
              }"
                format="HH"
   
              type="time"
              placeholder="время приема">
            </date-picker>

    <!-- <date-picker :lang="lang" v-model="time2" type="datetime"></date-picker> -->

            <v-btn
              class="my-4"
              color="primary"
              text
              @click="dialog = false">
              Отправить
            </v-btn>
             
          </v-form>
          <signin></signin>

         <!--  <v-divider></v-divider> -->
          <v-card-actions>
            <!-- <v-spacer></v-spacer> -->

          </v-card-actions>
        </v-card>
      </v-dialog>


          </div>
        </v-container>
      </v-app-bar> 





      <v-navigation-drawer
        v-model="drawer" 
        fixed

        temporary>
 
        <v-list
          nav
          dense>
          <v-list-item-group
            v-model="group"  
            active-class="deep-purple--text text--accent-4">
            <div v-for="(item, index) in parts"> 
              <v-list-item>
                <v-list-item-title locale="ar-SA" ref="button" @click="handler(item.name, item.classname)"> <h3>{{item.name}}</h3> </v-list-item-title>
              </v-list-item>
            </div>
          </v-list-item-group>
        </v-list>
      </v-navigation-drawer>
              <v-container class="main px-0 pt-0">
          <div class="headsite">
            <div class="d-xs-none   d-md-flex head1"></div>
 
            <div class="titleb  ">
              <div class="d-xs-none d-sm-flex ludmila"></div>
              <div class="d-xs-none d-sm-flex nagb nagovets"></div>
              <!-- <div class="d-xs-none d-sm-flex  subti"> ПСИХОЛОГ - ПСИХОАНАЛИТИК</div> -->
              <div class="d-xs-none d-sm-flex  subti"> психолог - психоаналитик</div>
            </div>
 
            <div class="titles d-flex hidden-sm-and-up"> 
              <div class="ludmila  "></div>
              <div class="nagovets  nags"></div>
              <div class="bgdfa   "> </div>
              <div class="bgdfb  "> </div>
              <div class="subti  "> психолог - психоаналитик </div>
            </div>            
            <div class="head3">
              <div class="frontclouds "></div>
            </div>
          </div>
        </v-container>
      </div>
    </template>
    <script>
  import DatePicker from 'vue2-datepicker';
import Signin from '../../packs/components/Signin.vue';
import Signup from '../../packs/components/Signup.vue';
import Head from '../../packs/components/head.vue'
import 'vue2-datepicker/index.css';
  import gsap from "gsap";
  import { mdiMenu } from '@mdi/js'
export default {
  components: { Head, DatePicker, Signin, Signup },
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
    signOut () {
      this.$http.secured.delete('/signin')
        .then(response => {
          delete localStorage.csrf
          delete localStorage.signedIn
          this.$router.replace('/')
         })
         .catch(error => this.setError(error, 'Cannot sign out'))
    },   
    testhandler(){
        // console.log(this.plain)
      // this.$http.secured.get('/todos')
         this.$http.plain.post('/signup', { email: "sdvsdv@fdf.ru", password: "sdvesv", password_confirmation: "sdvesv" })
//          .catch(error => {
// console.log("ERRRR:: ",error.response.data);});
         // .then(response => this.signupSuccessful(response))
         // .catch(error => this.signupFailed(error)) 
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
    disabledDate(date) {
      const today = new Date();
      today.setHours(0, 0, 0, 0);

      return date < today || date > new Date(today.getTime() + 7 * 24 * 3600 * 1000);
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
    function subti() {
      gsap.set(".subti, .bgdfa, .bgdfb", {
        opacity: 0, 
 
        // backgroundPositionX: 165,
      }); 
      var tl =  gsap.timeline();
      tl.to(".subti, .bgdfa, .bgdfb", {

        // backgroundPositionX: 0,
        opacity: 1, 
        delay: 1,
        duration: 1.3,  
        ease: "sine.out",
          
      })   

    }
    function nagovets() {
      gsap.set(".nagovets", {
        opacity: 0, 
        x: -30,
        // backgroundPositionX: 165,
      }); 
      var tl =  gsap.timeline();
      tl.to(".nagovets", {
          x: 0,
        // backgroundPositionX: 0,
        opacity: 1, 
        delay: 0.4,
        duration: 2.9,  
        ease: "expo.out",
          
      })                   
    }    
    function ludmila() {
      gsap.set(".ludmila", {
        opacity: 0, 
        x: -30,
        // backgroundPositionX: 165,
      }); 
      var tl =  gsap.timeline();
      tl.to(".ludmila", {
          x: 0,
        // backgroundPositionX: 0,
        opacity: 1, 
        delay: 0.2,
        duration: 2.6,  
        ease: "expo.out",
          
      })                   
    }
    function frontclouds() {
      gsap.set(".frontclouds", {
        opacity: 0.2, 
        x: 70,
        // backgroundPositionX: 165,
      });   
      var tl =  gsap.timeline();
        tl.to(".frontclouds", {
          x: 0,
        // backgroundPositionX: 0,
        opacity: 1, 
        delay: 0,
        duration: 2.2,  
         ease: "sine.out",
          
      })         
    }
    var master = gsap.timeline();

    master.add(frontclouds()) 
    .add(ludmila()) 
    .add(nagovets()) 
    .add(subti() ) 
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
  background-image: url('../../images/psy_bg.jpg');
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
  background-image: url('../../images/psy.jpg');
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
  background-image: url('../../images/books.jpg');
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
   background-image: url('../../images/bg_books.jpg');
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
  background-image: url('../../images/foto10.png');
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
  background-image: url('../../images/ludmila80.png');
}
.nagovets{
  z-index: 2;
  position: relative;
  height: 82px;
  width: 215px;
  background-image: url('../../images/nagovets80.png');
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
  background-image: url('../../images/frontclouds.png');
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
  background-image: url('../../images/head2.jpg');
}
.head1{
  /*float: left;*/
  z-index: 1;
  position: absolute;
  height: 215px;
  width: 201px;
  background-image: url('../../images/head1.jpg');
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
  background-image: url('../../images/head3.jpg');
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