<template>
  <div id="app">
    <div id="nav">
      <router-link to="/">Home</router-link> |
      <router-link to="/about">About</router-link>
      <a href="/signup">Signup</a>
      <a href="/login">Login</a>
      <!-- <a href="/logout">Logout</a> -->
    </div>
    <router-view/>
  </div>
</template>

<style>

</style>
