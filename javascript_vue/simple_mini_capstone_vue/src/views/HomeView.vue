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
      <button v-on:click="showInfo(product)">Show More Info</button>
      <div v-if="currentProduct === product">
        <p>{{ product.description }}</p>
        <p>{{ product.formatted.price }}</p>
        <img :src="product.image_url">
        <p>Name: <input type="text" v-model="product.name"/></p>
        <p>Price: <input type="text" v-model="product.price"/></p>
        <p>Description: <textarea v-model="product.description"></textarea></p>
        <p>Image Url: <input type="text" v-model="product.image_url"/></p>
        <button v-on:click="updateProduct(product)">Update Product</button>
        <button v-on:click="deleteProduct(product)">Delete Product</button>
      </div>
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
        productURL: "",
        currentProduct: ""
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
      },
      showInfo: function(product) {
        this.currentProduct = product;
      },
      updateProduct: function(product) {
        var params = {
          name: product.name,
          price: product.price,
          description: product.description,
          image_url: product.image_url
        }
        axios.patch(`/products/${product.id}`, params).then(response => {
          product = response.data;
        })
      },
      deleteProduct: function(product) {
        axios.delete(`/products/${product.id}`).then(response => {
          console.log(response.data)
          var index = this.recipes.indexOf(product);
          this.products.splice(index, 1);
        })
      }
    }
  };
</script>