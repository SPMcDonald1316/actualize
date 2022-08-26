<template>
  <div class="home">
    <h1>{{ message }}</h1>
    <h1>{{ name }}</h1>
    <!-- <h1>{{ products }}</h1> -->
    <button v-on:click="addProduct()">Add A New Product</button>
    <div v-for="product in products">
      <p>{{ product.id }}. {{ product.name }}</p>
      <p>{{ product.description }}</p>
      <p>{{ product.formatted.price }}</p>
      <img :src="product.image_url">
      <hr/>
    </div>
  </div>
</template>

<style>
</style>

<script>
 import axios from "axios";
  export default {
    data: function() {
      return {
        message: "Welcome to Vue.js!",
        name: "sean",
        products: []
      };
    },
    created: function() {
      axios.get("/products").then(response => {
        this.products = response.data;
      })
    },
    methods: {
      addProduct: function() {
        var params = {
          name: 'baseball bat',
          price: 65.99,
          description: 'For hitting dingers!',
          image_url: "https://tse1.mm.bing.net/th?id=OIP.3WSHRT2Le2IY6f0bCAEP2wHaHa&pid=Api"
        }
        axios.post("/products", params).then(response => {
          console.log(response.data);
        })
      }
    }
  };
</script>