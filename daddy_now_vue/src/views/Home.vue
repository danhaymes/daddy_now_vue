<template>
  <div class="home">
    <div class="wrapper row0">
  <div id="topbar" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
  </div>
</div>

    <h1>{{ message }}</h1>
    <div class="wrapper bgded overlay" style="background-image:url('images/demo/backgrounds/dadhomepage.png');">
  <div id="pageintro" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <article>
      <p></p>
      <h3 class="heading">Daddy...NOW!</h3>
      <p>So this is where I could descrieb or do a little intro to my app.</p>
      <footer>
        <ul class="nospace inline pushright">
          <li><a class="btn" href="/Login">Login</a></li>
          <li><a class="btn inverse" href="/Signup">Signup</a></li>
        </ul>
      </footer>
    </article>
    <!-- ################################################################################################ -->
  </div>
</div>
  </div>
</template>

<style>
  h1 {
    text-align: center;
  }
</style>

<script>
export default {
  data: function() {
    return {
      message: "What up Daddy!"
    };
  },
  created: function() {},
  methods: {},
  computed: {}
};
</script>