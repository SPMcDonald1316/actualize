<template>
  <div class="recipes-index">
    <div v-if="loggedIn">
      
    </div>
  </div>
</template>

<script>
  import axios from "axios";

  export default {
    data: function() {
      return {
        recipes: [],
        loggedIn: false
      }
    },
    created: function() {
      axios.get('/api/recipes').then(response => {
        this.recipes.push(response.data)
      })
    }
  }
</script>