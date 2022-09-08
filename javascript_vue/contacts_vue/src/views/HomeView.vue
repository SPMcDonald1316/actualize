<template>
  <div class="home">
    <div>
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
    </div>
    <div>
      <h1>Contacts</h1>
      <div v-for="contact in contacts">
        <p>Name: {{contact.name}}</p>
        <button v-on:click="showInfo(contact)">Info</button>
        <div v-if="currentContact === contact">
          <p>Phone: {{currentContact.phone}}</p>
          <p>Email: {{currentContact.email}}</p>
          <p>Bio: {{currentContact.bio}}</p>
        </div>
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
        },
        currentContact: ''
      };
    },
    created: function() {
      axios.get("/api/contacts").then(response => {
        console.log(response.data)
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
      },
      showInfo: function(contact) {
        this.currentContact = contact
      }
    }
  };
</script>