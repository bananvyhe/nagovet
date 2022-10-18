<template>
  <div>
  	<v-container class=" py-0 " >
        <v-container class="rev_block py-0 ">
          <div class="aboutTitle headpsy d-flex justify-center pb-3">
            <h2>Отзывы</h2>
          </div>
          <masonry-wall :items="reviews" :ssr-columns="1" :column-width="300" :gap="16">
            <template #default="{ item, index }">
              <v-card>
              <div class="px-4 py-3 newsBlock">
                <div>{{ item.body }}</div>
                <div class="d-flex justify-end subtitle-2">{{ item.name }}</div>
              </div></v-card>
            </template>
          </masonry-wall>
        </v-container>
  	</v-container>
  </div>
</template>

<script>
export default {
 
  data: function () {
    return {
     reviews: []  
    }
  },
	created () {
    console.log("reviews created")
		this.$http.plain.get('/reviews')
      .then(response => { 
        console.log(response.data)
        this.reviews = response.data 
      })
      .catch(error => { this.setError(error, 'Something went wrong') })
  	},  
	}
</script>

<style >
 
</style>