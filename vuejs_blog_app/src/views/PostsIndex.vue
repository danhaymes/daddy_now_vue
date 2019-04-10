<template>
<div>
    
  <div v-for="post in posts">
    <p>{{ posts }}</p>
    
  </div>
    
</div>
</template>

<script>
import axios from "axios";
export default {
  data: function() {
    return {
      posts: []
    };
  }, 
  created: function() {
    axios.get("/api/posts").then(response => {
      this.post = response.data;
    });
  },
 } 
</script>