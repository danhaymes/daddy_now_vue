import Vue from 'vue';
import Router from 'vue-router';
import Home from './views/Home.vue';
import Signup from './views/Signup.vue';
import Login from "./views/Login.vue";
import Calendar from "./views/Calendar.vue";
import Posts from "./views/posts.vue";
import Logout from "./views/logout.vue";
import baby_name from "./views/baby_name.vue";

Vue.use(Router)
import axios from "axios";

export default new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    {
      path: '/',
      name: 'home',
      component: Home
    },
    { 
      path: "/signup", 
      name: "signup", 
      component: Signup 
    },
    { 
      path: "/baby_name", 
      name: "baby_names", 
      component: baby_name 
    },
    { 
      path: "/login", 
      name: "login", 
      component: Login 
    },
    {
      path: "/posts",
      name: "posts",
      component: Posts
    },
    { 
      path: "/Calendar", 
      name: "Calendar", 
      component: Calendar 
    },
    { 
      path: "/logout", 
      name: "logout", 
      component: Logout 
    },

    {
      path: '/about',
      name: 'about',
      // route level code-splitting
      // this generates a separate chunk (about.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import(/* webpackChunkName: "about" */ './views/About.vue')
    }
  ]
})
