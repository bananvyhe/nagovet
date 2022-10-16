   <template>  
    <div>
      <v-app-bar dense fixed flat hide-on-scroll rounded color="transparent" class="appbar">
        <v-container class= "px-0">
          <div class="d-flex d-sm-flex " > 
            <v-hover>
              <template v-slot:default="{ hover }">
                <div   class="d-flex hidden-sm-and-up  " >

                  <v-btn  @click="drawer = true"  small 
            color="primary">                  <v-icon  class=" ">
                  {{mdiMenu}}
                  </v-icon>меню</v-btn>
                </div>
              </template>
            </v-hover>

            <v-spacer></v-spacer>
            <div class="d-flex align-center">
              <!-- {{this.signedIn}} -->
              <!-- <div v-if="this.signedIn == true" > -->
              <profile class="d-flex align-center"></profile>
              <!-- </div>   -->
              <!-- {{this.signedIn}} -->
              <div v-if="this.signedIn == false">
                <!-- <router-link class="mx-1" to="/Signup">Регистрация</router-link> -->
                <!-- <router-link class="mx-2 pr-1" to="/Signin">Войти</router-link> -->
              </div>          
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
              <!-- {{this.href}}  -->
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
            class="mx-4 pt-3"
            ref="form"
            v-model="valid"
            lazy-validation>
            <v-text-field
              v-model="name"
              :counter="45"
              :rules="nameRules"
              label="Как к вам обращаться?"
              required>
            </v-text-field>

            <div class="my-2">
            </div>

              <VuePhoneNumberInput
              :translations="{
                countrySelectorLabel: 'Код страны',
                countrySelectorError: 'Ошибка',
                phoneNumberLabel: 'Номер телефона',
                example: 'Например:'
              }"
              class="mb-2"
                v-model="phone"
             
                label="phone"
                 >
              </VuePhoneNumberInput>    
            <v-textarea
              class="mt-3"
              v-model="text"
              filled
              name="input-7-4"
              label="Задайте вопрос"
              value="">
            </v-textarea>
            <div class="d-flex justify-center flex-column">
              <div class="mb-1 " style="text-align: center;">
                Встречи проводятся очно или онлайн через мессенджеры:
              </div>
              <div class="d-flex flex-row justify-center">
                <a href="https://web.telegram.org/"  target="_blank"><div class="telg mr-2"></div></a>
                <a href="https://skype.com/"  target="_blank"><div class="skype mr-2"></div></a>
                <a href="https://www.whatsapp.com/"  target="_blank"><div class="whatsapp mr-2"></div></a>
                <a href="https://www.viber.com//"  target="_blank"><div class="viber mr-2"></div></a>
              </div>              
            </div>


<!--    <v-date-picker
      v-model="date"
      :allowed-dates="allowedDates"
      class="mt-4"
 s
   
    ></v-date-picker> -->
 
<!-- 
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
            </date-picker> -->
        <div class="d-flex justify-end">
          <v-btn
            class="my-2"
            color="primary"
            text
            @click="meshandl()">
            Отправить
          </v-btn>  
        </div>

             
          </v-form>
          <v-card-actions>
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
              <router-link  to="/" >
                <div>
                  <div class="d-xs-none d-sm-flex ludmila"></div>
                  <div class="d-xs-none d-sm-flex nagb nagovets"></div>                
                </div>
              </router-link>
              <!-- <div class="d-xs-none d-sm-flex  subti"> ПСИХОЛОГ - ПСИХОАНАЛИТИК</div> -->
              <div class="d-xs-none d-sm-flex  subti flex-row  "> психолог - психоаналитик <div class="ml-5 mb-1" style="text-align: center;"><a style="color:#ffffff !important; " href="tel:+79193814826" >тел. +7(919) 381 4826</a></div> </div>
 
              
            </div>
 
            <div class="titles d-flex hidden-sm-and-up"> 
              <div class="ludmila  "></div>
              <div class="nagovets  nags"></div>
              <div class="bgdfa   "> </div>
              <div class="bgdfb  "> </div>
             <div class=" subti flex-row  "> психолог–психоаналитик<br><div class="pb-1" style="text-align: center;"><a style="color:#ffffff !important; " href="tel:+79193814826" >тел. +7(919) 381 4826</a></div> </div>
 
            </div>            
            <div class="head3">
              <div class="frontclouds "></div>
 
            </div>
          </div>
        </v-container>
      </div>
    </template>
    <script>
  import { mapState } from 'pinia'
  import { mapActions } from 'pinia'
  import { useLogStore } from 'store.js'
  import DatePicker from 'vue2-datepicker';
  import Profile from '../../packs/components/Profile.vue';
// import Signin from '../../packs/components/Signin.vue';
// import Signup from '../../packs/components/Signup.vue';
import Head from '../../packs/components/head.vue'
import 'vue2-datepicker/index.css';
  import gsap from "gsap";
  import { mdiMenu } from '@mdi/js'
import VuePhoneNumberInput from "vue-phone-number-input" 
export default {
  //  setup() {
  //   const store = uselogStore()
  //   return {
  //     // you can return the whole store instance to use it in the template
  //     store,
  //   }
 
  // },
  components: { Head, DatePicker, VuePhoneNumberInput, Profile },
 
  data: function () {
    return {
      href: '',
      els: ["2022-03-03", "2022-03-05"],
      date: (new Date(Date.now() - (new Date()).getTimezoneOffset() * 60000)).toISOString().substr(0, 10),      
      text: '',
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
        v => (v && v.length <= 45) || 'Вы превысили лимит 45 знаков',
      ],
      phone: '',
      // emailRules: [
      //   v => !!v || 'E-mail необходим для связи',
      //   v => /.+@.+\..+/.test(v) || 'E-mail введен некорректно',
      // ],
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
  computed: {
    ...mapState(useLogStore, {
      signedIn: "thissignedIn",
    }),  
  },
  methods:{  
    allowedDates: val => this.els.indexOf(val) !== -1,
    ...mapActions(useLogStore, ["unsetCurrentUser"]), 
    meshandl() {
      this.dialog = false
      this.$http.plain.post('/mesa', { name: this.name, phone: this.phone, text: this.text, data: this.time1, time: this.time2 })
        .then(response => {
 
          this.$toast("Спасибо, ваше сообщение отправлено.", {
            position: "bottom-right",
            timeout: 5000,
            closeOnClick: true,
            pauseOnFocusLoss: true,
            pauseOnHover: true,
            draggable: true,
            draggablePercent: 0.6,
            showCloseButtonOnHover: false,
            hideProgressBar: true,
            closeButton: "button",
            icon: true,
            rtl: false
          });

        })
        .catch(error => {

        })
    },     
    // ...mapActions(useLogStore, ["logouted"]),  
 
    setError (error, text) {
      this.error = (error.response && error.response.data && error.response.data.error) || text
    },
    // signOut () {
    //   this.$http.secured.delete('/signin')
    //     .then(response => {
    //       // delete localStorage.csrf
    //       // delete localStorage.signedIn
    //       this.unsetCurrentUser()
    //       this.$router.replace('/')
    //      })
    //      .catch(error => this.setError(error, 'Cannot sign out'))
    // },   
 
    
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
      // this.$router.replace('/')
      var offs = 18
      if (da == 'Обо мне'){
        offs = 35
        // console.log(da)
      }
      if (da == 'Отзывы'){
        this.href = "/rev"
      }else{
        this.href = "/"
      }
      this.$router.replace(this.href)

      this.$nextTick(function () {
        this.$vuetify.goTo(ta,{ offset: offs })
        this.blinkup(ta) 
        this.drawer = false
      })
      // console.log(da)
      // console.log(ta)
      // $vuetify.goTo('#about_block')
    }
  },
  updated(){
 
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
        duration: 1.6,  
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
        duration: 1.2,  
         ease: "power.out",
          
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
  created () {
 
  },
}
</script>

<style >
.whatsapp{
  border-radius: 4px;
  background-image: url('../../images/whatsapp.png');
  background-size: 32px;
  height: 32px;
  width: 32px;
}
.viber{
  border-radius: 4px;
  background-image: url('../../images/viber.png');
  background-size: 32px;
  height: 32px;
  width: 32px;
}
.skype{
  border-radius: 4px;
  background-image: url('../../images/skype.png');
  background-size: 32px;
  height: 32px;
  width: 32px;
}
.telg{
  border-radius: 4px;
  background-image: url('../../images/tg.png');
  background-size: 32px;
  height: 32px;
  width: 32px;
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
  margin-top: 60px;
  margin-left: 20px;
}
.titles{

  z-index: 5;
  position: absolute;
  margin-top: 74px;
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
  width: 370px;
    margin-top:  2px;
    margin-left: 50px;
 background-color: rgb(79.688, 71.652, 47.813, .2);
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
  backdrop-filter: blur(8px);
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