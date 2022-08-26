<template>
  <div class="home">
    <h1>{{ message }}</h1>
    <h1>{{ name }}</h1>
    <!-- <h1>{{ products }}</h1> -->
    <div v-for="product in products">
      <p>{{ product.id }}. {{ product.name }}</p>
      <p>{{ product.description }}</p>
      <p>{{ product.formatted.price }}</p>
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
    methods: {}
  };
</script>