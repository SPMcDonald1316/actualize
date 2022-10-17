<template>
  <div class="recipes-show">
    <h1>{{ recipe.title }}</h1>
    <h1>{{ recipe.chef }}</h1>
    <h1>{{ recipe.ingredients }}</h1>
    <h1>{{ recipe.directions }}</h1>
    <h1>{{ recipe.prep_time }}</h1>
    <button v-on:click="editRecipe()">Edit</button>
  </div>
</template>

<script>
  import axios from 'axios';
  export default {
    data: function() {
      return {
        recipe: {}
      }
    },
    created: function() {  
      axios.get(`/api/recipes/${this.$route.params.id}`).then(response => {
        this.recipe = response.data
      })
    },
    methods: {
      editRecipe: function() {
        this.$router.push(`/recipes/${this.$route.params.id}/edit`)
      }
    }
  }
</script>