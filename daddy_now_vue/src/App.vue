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
 <!--      <li><a class="drop" href="#">Pages</a>
        <ul>
          <li><a href="pages/gallery.html">Gallery</a></li>
          <li><a href="pages/full-width.html">Full Width</a></li>
          <li><a href="pages/sidebar-left.html">Sidebar Left</a></li>
          <li><a href="pages/sidebar-right.html">Sidebar Right</a></li>
          <li><a href="pages/basic-grid.html">Basic Grid</a></li>
        </ul>
      </li> -->
      <li><a class="drop" href="#">How Big is My Baby</a>
        <ul>
          <li><a class="drop" href="#">First Trimester</a>
            <ul>
              <li><a href="#">Week 1</a></li>
              <li><a href="#">Week 2</a></li>
              <li><a href="#">Week 3</a></li>
              <li><a href="#">Week 4</a></li>
              <li><a href="#">Week 5</a></li>
              <li><a href="#">Week 6</a></li>
              <li><a href="#">Week 7</a></li>
              <li><a href="#">Week 8</a></li>
              <li><a href="#">Week 9</a></li>
              <li><a href="#">Week 10</a></li>
              <li><a href="#">Week 11</a></li>
              <li><a href="#">Week 12</a></li>
            </ul>
          </li>
          <li><a class="drop" href="#">Second Trimester</a>
            <ul>
              <li><a href="#">Week 13</a></li>
              <li><a href="#">Week 14</a></li>
              <li><a href="#">Week 15</a></li>
              <li><a href="#">Week 16</a></li>
              <li><a href="#">Week 17</a></li>
              <li><a href="#">Week 18</a></li>
              <li><a href="#">Week 19</a></li>
              <li><a href="#">Week 20</a></li>
              <li><a href="#">Week 21</a></li>
              <li><a href="#">Week 22</a></li>
              <li><a href="#">Week 23</a></li>
              <li><a href="#">Week 24</a></li>
              <li><a href="#">Week 25</a></li>
              <li><a href="#">Week 26</a></li>
            </ul>
          </li>
          <li><a class="drop" href="#">Third Trimester</a>
            <ul>
              <li><a href="#">Week 27</a></li>
              <li><a href="#">Week 28</a></li>
              <li><a href="#">Week 29</a></li>
              <li><a href="#">Week 30</a></li>
              <li><a href="#">Week 31</a></li>
              <li><a href="#">Week 32</a></li>
              <li><a href="#">Week 33</a></li>
              <li><a href="#">Week 34</a></li>
              <li><a href="#">Week 35</a></li>
              <li><a href="#">Week 36</a></li>
              <li><a href="#">Week 37</a></li>
              <li><a href="#">Week 38</a></li>
              <li><a href="#">Week 39</a></li>
              <li><a href="#">Week 40</a></li>
            </ul>
          </li>
        </ul>
      </li>
      <li><a href="/posts">Posts</a></li>
      <li><a href="#">Registry</a></li>
      <li><a href="/baby_name">Baby Names</a></li>
      <li><a href="/calendar">Calendar</a></li>
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
        <li><i class="fa fa-phone"></i> 1-515-770-2794</li>
        <!-- <li><i class="fa fa-fax"></i> +00 (123) 456 7890</li> -->
        <li><i class="fa fa-envelope-o"></i> info@daddynow.com</li>
      </ul>
    </div>
   <!--  <div class="one_half">
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
    </div> -->
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
  text-align: right;
  color: #008080;
}
nav {
  padding-left: 6%;
}
footer {
  padding-bottom: 1%;
}
#nav {
  padding: 30px;
}

#nav a {
  font-weight: bold;
  color: #008080;
}

#nav a.router-link-exact-active {
  color: #008080;
}
</style>
