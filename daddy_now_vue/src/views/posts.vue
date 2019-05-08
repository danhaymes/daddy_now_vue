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
        <div class="sectiontitle">
          <h6 class="heading">What Now</h6>
      Have Something to Say?<input type="text" v-model="newPost">
      <button v-on:click="createPost()">Post</button>
          <p></p>
        </div>
        <ul class="nospace group services">
          <li class="list-group-item">
            <article class="inverse" v-for="post in posts"><a href="#"></a>
              <h3>{{post.post}}</h3>      
                 <div v-for="comment in post.comments">
                  <p>{{comment.comment}}</p>      
              <!-- <h6 class="heading font-x1"><a href="#">Maecenas</a></h6> -->
                  <p></p>
                </div>
                  Comment<input type="text" v-model="post.newcomment">
                  
                  <button v-on:click="createComment(post.id,post.newcomment,post)">Comment</button>
            </article>
          </li>
        </ul>
      </section>
    </div>
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
    createComment: function(postId, newComment, post) {
      var params = {
        comment: newComment, 
        post_id: postId
      }
      console.log(postId, newComment)
      console.log(params)
      console.log(post)
      console.log(newComment)
      axios.post("/api/comments", params).then(response => {
        console.log(response.data)
      post.comments.push(params)
      })
    }
},
}
</script>