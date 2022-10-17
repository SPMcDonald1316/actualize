<template>
  <div class="recipes-edit">
    <div class="container">
      <form v-on:submit.prevent="submit()">
        <h1>Edit Recipe</h1>
        <ul>
          <li class="text-danger" v-for="error in errors">{{ error }}</li>
        </ul>
        <div class="form-group">
          <label>
            Title: <input type="text" class="form-control" v-model="recipe.title">
          </label>
        </div>
        <div class="form-group">
          <label>
            Chef: <input type="text" class="form-control" v-model="recipe.chef">
          </label>
        </div>
        <div class="form-group">
          <label>
            Ingredients: <input type="text" class="form-control" v-model="recipe.ingredients">
          </label>
        </div>
        <div class="form-group">
          <label>
            Prep Time: <input type="text" class="form-control" v-model="recipe.prepTime">
          </label>
        </div>
        <div class="form-group">
          <label>
            Directions: <input type="text" class="form-control" v-model="recipe.directions">
          </label>
        </div>
        <input type="submit" class="btn btn-primary" value="Submit"/>
      </form>
    </div>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  data: function() {
    return {
      recipe: {
        title: '',
        chef: '',
        ingredients: '',
        prepTime: '',
        directions: ''
      },
      errors: []
    }
  },
  created: function() {
    axios.get(`/api/recipes/${this.$route.params.id}`).then(response => {
      this.recipe = response.data
    })
  }
}
</script>