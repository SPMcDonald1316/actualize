<template>
  <div class="home">
    <h1>{{ message }}</h1>
    <h1>{{ name }}</h1>
    <p>Name: <input v-model="productName" type="text"/></p>
    <p>Price: <input v-model="productPrice" type="text"/></p>
    <p>Description: <textarea placeholder="Product description" rows="3" cols="30" v-model="productDescription"></textarea></p>
    <p>Image URL: <input v-model="productURL" type="text"/></p>
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
        products: [],
        productName: "",
        productPrice: "",
        productDescription: "",
        productURL: ""
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
          name: this.productName,
          price: this.productPrice,
          description: this.productDescription,
          image_url: this.productURL
        }
        axios.post("/products", params).then(response => {
          this.products.push(response.data);
        })
      }
    }
  };
</script>