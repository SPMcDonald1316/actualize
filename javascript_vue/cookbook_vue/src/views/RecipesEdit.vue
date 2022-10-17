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
            Prep Time: <input type="text" class="form-control" v-model="recipe.prep_time">
          </label>
        </div>
        <div class="form-group">
          <label>
            Directions: <input type="text" class="form-control" v-model="recipe.directions">
          </label>
        </div>
        <input type="submit" class="btn btn-primary" value="Edit"/>
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
        prep_time: '',
        directions: ''
      },
      errors: []
    }
  },
  created: function() {
    axios.get(`/api/recipes/${this.$route.params.id}`).then(response => {
      this.recipe = response.data
    })
  },
  methods: {
    submit: function() {
      var params = {
        title: this.recipe.title,
        chef: this.recipe.chef,
        ingredients: this.recipe.ingredients,
        prep_time: this.recipe.prep_time,
        directions: this.recipe.directions
      }
      axios.patch(`/api/recipes/${this.recipe.id}`, params).then(response => {
        console.log(response.data)
        this.$router.push(`/recipes/${this.recipe.id}`)
      }).catch(error => {
        this.errors = error.response.data.errors
      })
    }
  }
}
</script>