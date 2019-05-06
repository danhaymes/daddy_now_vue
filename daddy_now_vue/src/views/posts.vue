<template>
  <div class="posts">
    <h1>This is the page where you can make a post and leave a comment</h1>
  </div>
</template> -->

<template>
  <div class="home">
    <h1>{{ message }}</h1>
    <div class="wrapper row3">
      <section class="hoc container clear"> 
        <!-- ################################################################################################ -->
        <div class="sectiontitle">
          <h6 class="heading">What Now</h6>
          <p></p>
        </div>
        <ul class="nospace group services">
          <li class="list-group-item">
            <article class="inverse" v-for="post in posts"><a href="#"><i class="fas fa-baby"></i></a>
              <h3>{{post.post}}</h3>      
                 <div v-for="comment in post.comments">
                  <p>{{comment.comment}}</p>      
              <!-- <h6 class="heading font-x1"><a href="#">Maecenas</a></h6> -->
                  <p>Felis quam eget dictum suscipit vivamus et nec metus maecenas</p>
                </div>
                  Comment<input type="text" v-model="post.newcomment">
                  {{post.id}}
                  <button v-on:click="createComment(post.id,post.newcomment)">Comment</button>
            </article>
          </li>
<!--           <li class="one_quarter">
            <article><a href="#"><i class="fa fa-3x fa-weibo"></i></a>
              <h6 class="heading font-x1"><a href="#">Dignissim</a></h6>
              <p>Dapibus consectetuer mauris aliquam urna dolor semper volutpat</p>
            </article>
          </li>
          <li class="one_quarter">
            <article class="inverse"><a href="#"><i class="fa fa-3x fa-wheelchair-alt"></i></a>
              <h6 class="heading font-x1"><a href="#">Vestibulum</a></h6>
              <p>Id dictum vel est morbi lacinia sagittis mauris pellentesque id eros sit</p>
            </article>
          </li>
          <li class="one_quarter">
            <article><a href="#"><i class="fa fa-3x fa-viacoin"></i></a>
              <h6 class="heading font-x1"><a href="#">Bibendum</a></h6>
              <p>Amet risus interdum ornare integer id justo ut diam suscipit laoreet</p>
            </article> -->
          <!-- </li> -->
        </ul>
        <!-- ################################################################################################ -->
      </section>
    </div>
      Have Something to Say?<input type="text" v-model="newPost">
      <button v-on:click="createPost()">Post</button>
      <div v-for="post in posts">
        <h3>{{post.post}}</h3>      
          <div v-for="comment in post.comments">
            <p>{{comment.comment}}</p>      

          <!--this is where you would be able to edit your post using the <input> and the styling for the good looks. -->
          </div>


      </div>
      Post Id<input type="text" v-model="postId">
      <button v-on:click="createComment()">Comment</button>

<!--     <input type="text" v-model="titleFilter" list="posts">
    <datalist id="posts">
      <option v-for="post in posts">{{ post.post }}</option>
    </datalist> -->

      <!-- <transition-group appear enter-active-class="animated wobble" leave-active-class="animated rubberBand"> -->
       <!--  <div v-for="post in orderBy(filterBy(posts), sortAttribute, sortAsc)" v-bind:key="post.id">
          <p>{{ post.post }}</p>
 -->     <!--      <button v-on:click="removePost(post)">Remove post</button>
          <router-link v-bind:to="'/posts/' + post.id">See more info</router-link> -->
          <!-- <hr> -->
        <!-- </div> -->
      <!-- </transition-group> -->
  </div>
</template>
<style>
  img {
    width: 80px;
  }
  input {
    width: 40%;
    height: 90px;
    padding: 12px 20px;
    margin-left: 500px;
  }
  button {
    margin-left: 780px;
  }
</style>

<script>
import axios from "axios";
import Vue2Filters from "vue2-filters";
export default {
  mixins: [Vue2Filters.mixin],
  data: function() {
    return {
      message: "",
      posts: [],
      newPost: "",
      postComment: "",
      postId: "",
      sortAttribute: "post"
    };
  },
  created: function() {
    // ruby
    // response = HTTP.get("/api/posts")
    // posts = response.parse
    // axios.get("/api/posts").then(function(response) {
    axios.get("/api/posts").then(response => {
      this.posts = response.data;
      // console.log(response.data);
    })
  },
  methods: {
   
    createPost: function() {
      var params = {
        post: this.newPost,
        user_id: 1 // user is hard coded 
      }
      axios.post("/api/posts", params).then(response => {
        console.log(response.data)
        axios.get("/api/posts").then(response => {
        this.posts = response.data;
        })
      })
    },
    createComment: function(postId, newComment) {
      var params = {
        comment: newComment, 
        post_id: postId
      }
      console.log(postId, newComment)
      axios.post("/api/comments", params).then(response => {
        console.log(response.data)
      })
    }
},
}
</script>
<!--     // ,

    // setSortAttribute: function(attribute) {
    //   console.log(attribute);
    //   this.sortAttribute = attribute;
    //   if (this.sortAsc === 1) {
    //     this.sortAsc = -1;
    //   } else {
    //     this.sortAsc = 1;
    //   }
    // }