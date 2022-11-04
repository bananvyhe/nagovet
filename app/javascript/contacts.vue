<template>
  <div>
     <v-container class="contact_block pt-0">
          <div class="aboutTitle d-flex justify-center pb-4">
            <h2>Контакты</h2>
          </div>
 
              <div class="d-flex flex-column justify-center align-center pb-4"> 

                <h4>Консультирую:</h4>
                  <div class="desc body-1 my-2 mb-1">                
                    {{contacts[0].desc}}
                  </div> 
                  <div class="body-1 mt-0 mb-3">
                    {{contacts[1].desc}}
                  </div>
<!--                 <div class="body-1 my-2 mb-1">ОНЛАЙН - по видеосвязи (мессенджеры: Scype, WhatsApp, Viber, Telegram)
                </div>
                <div class="body-1 mt-0 mb-3">ОЧНО - в Екатеринбурге по адресу: Тверитина 34, корпус 5.</div> -->
 <!-- 
                <v-expansion-panels>
    <v-expansion-panel>
        <v-expansion-panel-header disable-icon-rotate>
          Открыть карту
          <template v-slot:actions>
            <v-icon color="teal">
              mdi-check
            </v-icon>
          </template>
        </v-expansion-panel-header>
        <v-expansion-panel-content> -->
          <div  style="position:relative;overflow:hidden;width:100%;">
          <span v-html="contacts[0].position"></span>
            </div>
<!--  
                  <a href="https://yandex.ru/maps/54/yekaterinburg/?utm_medium=mapframe&utm_source=maps" style="color:#eee;font-size:12px;position:absolute;top:0px;">Екатеринбург</a>
                  <a href="https://yandex.ru/maps/54/yekaterinburg/house/ulitsa_tveritina_34_5/YkkYcAVlQEYEQFtsfXRzc3lgbA==/?ll=60.625933%2C56.822538&source=wizgeo&utm_medium=mapframe&utm_source=maps&z=17" style="color:#eee;font-size:12px;position:absolute;top:14px;">Улица Тверитина, 34/5 — Яндекс Карты</a>
                  <iframe  src="https://yandex.ru/map-widget/v1/-/CCUB6JWA9A"  height="600" frameborder="1" allowfullscreen="true" style="position:relative;width:100%;"></iframe>
                </div> -->

     <!--    </v-expansion-panel-content>
      </v-expansion-panel> </v-expansion-panels>
 -->
          <div class="mt-4">
          разработка сайта: <a href="https://pixeltech.ru">pixeltech.ru</a> 
          </div>
                </div> 
              
        </v-container> 
  </div>
</template>

<script>
export default {
 
  data: function () {
    return {
      contacts: [],
    }
  },
  created () {
    this.$http.plain.get('/contacts')
      .then(response => { 
        this.contacts = response.data 
        console.log(response.data )
      })
      .catch(error => { this.setError(error, 'Something went wrong') })
  },   
}
</script>

<style >
 .desc{
  max-width: 800px;
 }
</style>