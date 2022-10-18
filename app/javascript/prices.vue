<template>
  <div>
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
                v-for="item in prices"
                :key="item.name"
              >
                <td>{{ item.name }}</td>
                <td>{{ item.cost }}&nbsp;руб.</td>
                <td>{{ item.duration }}</td>
              </tr>
            </tbody>
          </template>
        </v-simple-table>
        </v-container>
  </div>
</template>

<script>
export default {
 
  data: function () {
    return {
      prices: []  
    }
  },
  created () {
    console.log("reviews created")
    this.$http.plain.get('/prices')
      .then(response => { 
        this.prices = response.data 
      })
      .catch(error => { this.setError(error, 'Something went wrong') })
  },   
}
</script>

<style >
 
</style>