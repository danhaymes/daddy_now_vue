<template>
  <div class="Calendar">
    <h1>Here is your calendar </h1>
        {{google_calendar}}
    <button v-on:click="whatever()">On the button</button>
  </div>
</template>
  <style>
 
  </style>

<script>
import axios from "axios";
import Vue2Filters from "vue2-filters";
export default {
  mixins: [Vue2Filters.mixin],
  data: function() {
    return {
      message: "What is happening!",
      google_calendar: "",
    };
  },
  created: function() {
    // ruby
    // response = HTTP.get("/api/google_calendar")
    // google_calendar = response.parse
    // axios.get("/api/google_calendar").then(function(response) {
    axios.get("/redirect").then(response => {
      this.google_calendar = response.data;
      console.log(response.data);
      axios.get("/events/dan.haymes@gmail.com").then(response => {
        console.log("events callback is working")
        this.google_calendar = response.data;
        console.log(response.data);
      
      }).catch(error => {
        console.log(error.response.data)
      })
    })
  },
  methods: {
    whatever: function() {
      axios.get('https://accounts.google.com/o/oauth2/auth').then(response => {
        console.log(response.data)
      })
    },
    removePost: function(post) {
      var index = this.google_calendar.indexOf(post);
      this.google_calendar.splice(index, 2);
    },
    setSortAttribute: function(attribute) {
      console.log(attribute);
      this.sortAttribute = attribute;
      if (this.sortAsc === 1) {
        this.sortAsc = -1;
      } else {
        this.sortAsc = 1;
      }
    }
  }
};



// def client_options
//     {
//       client_id: Rails.application.secrets.google_client_id,
//       client_secret: Rails.application.secrets.google_client_secret,
//       authorization_uri: 'https://accounts.google.com/o/oauth2/auth',
//       token_credential_uri: 'https://accounts.google.com/o/oauth2/token',
//       scope: Google::Apis::CalendarV3::AUTH_CALENDAR,
//       redirect_uri: callback_url
//     }
//   end
</script>
