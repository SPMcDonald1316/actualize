<template>
  <div class="recipes-index">
    <div v-for="recipe in recipes">
      <p>Title: <a v-bind:href="`/recipes/${recipe.id}`">{{ recipe.title }}</a></p>
      <hr>
    </div>
  </div>
</template>

<script>
  import axios from "axios";

  export default {
    data: function() {
      return {
        recipes: '',
      }
    },
    created: function() {
      axios.get('/api/recipes').then(response => {
        this.recipes = response.data
      })
    }
  }
</script>