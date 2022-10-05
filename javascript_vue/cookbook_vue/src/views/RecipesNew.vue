<template>
  <div class="recipes-nw">
    <form v-on:submit.prevent="submit()">
      <h1>New Recipes</h1>
      <ul>
        <li class="text-danger" v-for="error in errors">
          {{ error }}
        </li>
      </ul>
      <div class="form-group">
        <label>Title:
          <input type="text" class="form-control" v-model="title"/>
        </label>
      </div>
      <div class="form-group">
        <label>Chef:
          <input type="text" class="form-control" v-model="chef"/>
        </label>
      </div>
      <div class="form-group">
        <label>Ingredients:
          <input type="text" class="form-control" v-model="ingredients"/>
        </label>
      </div>
      <div class="form-group">
        <label>Description:
          <input type="text" class="form-control" v-model="description"/>
        </label>
      </div>
      <div class="form-group">
        <label>Prep Time:
          <input type="number" step="5" class="form-control" v-model="prepTime"/>
        </label>
      </div>
      <input type="submit" class="btn btn-primary" value="Submit"/>
    </form>
  </div>
</template>

<script>
  import axios from 'axios'

  export default {
    data: function() {
      return {
        title: "",
        chef: "",
        ingredients: "",
        description: "",
        prepTime: 0,
        errors: []
      }
    },
    methods: {
      submit: function() {
        var params = {
          title: this.title,
          chef: this.chef,
          ingredients: this.ingredients,
          directions: this.directions,
          prep_time: this.prepTime
        }
        axios.post("/api/recipes", params).then(response => {
          console.log(response.data)
          this.$router.push("/recipes")
        }).catch(error => {
          this.errors = error.response.data.errors
        })
      }
    }
  }
</script>