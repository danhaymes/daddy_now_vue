<template>
  <div id="app">
     <header id="header" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div id="logo" class="fl_left">
      <h1><a href="index.html">Daddy Now</a></h1>
      <p></p>
    </div>
    
    <!-- ################################################################################################ -->
  </header>
    <div class="wrapper row1">
 
  <nav id="mainav" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <ul class="clear">
      <li class="active"><a href="/">Home</a></li>
      <li><a class="drop" href="#">Pages</a>
        <ul>
          <li><a href="pages/gallery.html">Gallery</a></li>
          <li><a href="pages/full-width.html">Full Width</a></li>
          <li><a href="pages/sidebar-left.html">Sidebar Left</a></li>
          <li><a href="pages/sidebar-right.html">Sidebar Right</a></li>
          <li><a href="pages/basic-grid.html">Basic Grid</a></li>
        </ul>
      </li>
      <li><a class="drop" href="#">Dropdown</a>
        <ul>
          <li><a href="#">Level 2</a></li>
          <li><a class="drop" href="#">Level 2 + Drop</a>
            <ul>
              <li><a href="#">Level 3</a></li>
              <li><a href="#">Level 3</a></li>
              <li><a href="#">Level 3</a></li>
            </ul>
          </li>
          <li><a href="#">Level 2</a></li>
        </ul>
      </li>
      <li><a href="/posts">Posts</a></li>
      <li><a href="#">Link Text</a></li>
      <li><a href="#">Link Text</a></li>
      <li><a href="#">Long Link Text</a></li>
    </ul>
    <!-- ################################################################################################ -->
  </nav>
</div>
    <router-view/>
    
    <footer id="footer" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div class="one_half first">
      <h6 class="heading">Facilisis neque vestibulum</h6>
      <ul class="nospace btmspace-30 linklist contact">
        <!-- <li><i class="fa fa-map-marker"></i> -->
          <!-- <address>
          Street Name &amp; Number, Town, Postcode/Zip
          </address> -->
        </li>
        <li><i class="fa fa-phone"></i> +00 (123) 456 7890</li>
        <li><i class="fa fa-fax"></i> +00 (123) 456 7890</li>
        <li><i class="fa fa-envelope-o"></i> info@daddynow.com</li>
      </ul>
    </div>
    <div class="one_half">
      <h6 class="heading">Auctor egestas quisque</h6>
      <p class="nospace btmspace-30">Want Additional Dad Info?</p>
      <form method="post" action="#">
        <fieldset>
          <legend>Newsletter:</legend>
          <input class="btmspace-15" type="text" value="" placeholder="Name">
          <input class="btmspace-15" type="text" value="" placeholder="Email">
          <button type="submit" value="submit">Submit</button>
        </fieldset>
      </form>
    </div>
    <!-- <div class="one_third">
      <h6 class="heading">Tempor orci vestibulum</h6>

    </div> -->
    <!-- ################################################################################################ -->
  </footer>
  </div>
</template>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
#nav {
  padding: 30px;
}

#nav a {
  font-weight: bold;
  color: #2c3e50;
}

#nav a.router-link-exact-active {
  color: #42b983;
}
</style>
