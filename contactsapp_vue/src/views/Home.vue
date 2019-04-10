<template>
  <div class="home">
    <img alt="Vue logo" src="../assets/logo.png">
    <HelloWorld msg="Welcome to Your Vue.js App"/>
  </div>
</template>

<script>
// @ is an alias to /src
import axios from "axios";

import HelloWorld from '@/components/HelloWorld.vue'

export default {
  data: function() {
    return {
      contacts: []
    };
  },
  
  created: function() {
    axios.get("api/contacts").then(response => {
      this.contacts = response.data;
    });
  }
}
</script>
