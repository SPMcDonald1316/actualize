<template>
  <div class="home">
    <h1>Contacts</h1>
    <div v-for="contact in contacts">
      <p>Name: {{contact.name}}</p>
      <p>Number: {{contact.phone}}</p>
    </div>
  </div>
</template>

<script>
  import axios from "axios";
  export default {
    data: function() {
      return {
        contacts: []
      };
    },
    created: function() {
      axios.get("/api/contacts").then(response => {
        this.contacts = response.data;
      });
    },
    methods: {}
  };
</script>
