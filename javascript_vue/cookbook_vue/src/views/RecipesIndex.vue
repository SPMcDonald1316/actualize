<template>
  <div class="recipes-index">
    <div v-for="recipe in recipes">
      <p>Title: {{ recipe.title }}</p>
      <p>Ingredients: {{ recipe.ingredients}}</p>
      <p>Description: {{ recipe.description }}</p>
      <p>Prep Time: {{ recipe.prep_time }}</p>
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