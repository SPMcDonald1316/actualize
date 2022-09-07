<template>
  <div class="home">
    <di>
      <h1>Add New Contact</h1>
      <form>
        <label for="firstName">
          <p>First Name: <input id="firstName" type="text" v-model="newContact.firstName" /></p>
        </label>
        <label for="lastName">
          <p>Last Name: <input id="lastName" type="text" v-model="newContact.lastName" /></p>
        </label>
        <label for="email">
          <p>Email: <input id="email" type="text" v-model="newContact.email" /></p>
        </label>
        <label for="phoneNumber">
          <p>Phone Number: <input id="phoneNumber" type="text" v-model="newContact.phoneNumber" /></p>
        </label>
        <button v-on:click="addContact()">Add Contact</button>
      </form>
    </di>
    <div>
      <h1>Contacts</h1>
      <div v-for="contact in contacts">
        <p>Name: {{contact.name}}</p>
        <p>Number: {{contact.phone}}</p>
        <hr>
      </div>
    </div>
  </div>
</template>

<script>
  import axios from "axios";
  export default {
    data: function() {
      return {
        contacts: [],
        newContact: {
          firstName: '',
          lastName: '',
          email: '',
          phoneNumber: ''
        }
      };
    },
    created: function() {
      axios.get("/api/contacts").then(response => {
        this.contacts = response.data;
      });
    },
    methods: {
      addContact: function() {
        var params = {
          first_name: this.newContact.firstName,
          last_name: this.newContact.lastName,
          email: this.newContact.email,
          phone_number: this.newContact.phoneNumber
        }
        axios.post("/api/contacts", params).then(response => {
          console.log(response.data);
        })
      }
    }
  };
</script>