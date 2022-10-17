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
            <input>
          </label>
        </div>
        <div class="form-group">
          <label>
            <input>
          </label>
        </div>
        <div class="form-group">
          <label>
            <input>
          </label>
        </div>
        <div class="form-group">
          <label>
            <input>
          </label>
        </div>
        <div class="form-group">
          <label>
            <input>
          </label>
        </div>
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
  }
}
</script>