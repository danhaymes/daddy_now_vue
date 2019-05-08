<template>
  <div class="baby_name">
    <h1>This is where you can get some ideas for baby names </h1>
    <div v-for="baby_name in baby_names">
      <p1>{{baby_name}}</p1>
    </div>
  
  </div>
</template>
<style>
  p1 {
    padding-left: 45%;
    display: -webkit-flex; /* Safari */
    -webkit-align-items: center; /* Safari 7.0+ */
    display: flex;
    align-items: center;
    font-size: 20px;
  }
  h1 {
    padding-left: 30%;
    display: -webkit-flex; /* Safari */
    -webkit-align-items: center; /* Safari 7.0+ */
    display: flex;
    align-items: center;
  }
</style>
<script>
  import axios from "axios";
  import Vue2Filters from "vue2-filters";
  export default {
    mixins: [Vue2Filters.mixin],
    data: function() {
      return {
        baby_names: []
      };
    },
    created: function() {
      console.log("hello")
    axios.get("/api/baby_names").then(response => {
      console.log(response);
      this.baby_names = response.data.baby_names;
    })
  }
  }
</script>