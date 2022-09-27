<template>
  <div class="signup">
    <form v-on:submit.prevent="submit()">
      <h1>Signup</h1>
      <ul>
        <li class="text-danger" v-for="error in errors">
          {{ error }}
        </li>
      </ul>
      <div class="form-group">
        <label>Name:
          <input type="text" class="form-control" v-model="name"/>
        </label>
      </div>
      <div class="form-group">
        <label>Email:
          <input type="email" class="form-control" v-model="email"/>
        </label>
      </div>
      <div class="form-group">
        <label>Password:
          <input type="password" class="form-control" v-model="password"/>
        </label>
      </div>
      <div class="form-group">
        <label>Password Confirmation:
          <input type="password" class="form-control" v-model="passwordConfirmation"/>
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
        name: "",
        email: "",
        password: "",
        passwordConfirmation: "",
        errors: []
      }
    },
    methods: {
      submit: function() {
        var params = {
          name: this.name,
          email: this.email,
          password: this.password,
          password_confirmation: this.passwordConfirmation
        }
        axios.post("/api/users", params).then(response => {
          console.log(response.data)
          this.$router.push("/login")
        }).catch(error => {
          this.errors = error.response.data.errors
        })
      }
    }
  }
</script>