import Vue from 'vue'
import VueRouter from 'vue-router'
import HomeView from '../views/HomeView.vue'
import Signup from '../views/Signup.vue'
import Login from '../views/Login.vue'
import Logout from '../views/Logout.vue'
import RecipesIndex from '../views/RecipesIndex.vue'
import RecipesNew from '../views/RecipesNew.vue'
import RecipesShow from '../views/RecipesShow.vue'
import RecipesEdit from '../views/RecipesEdit.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'home',
    component: HomeView
  },
  {
    path: '/about',
    name: 'about',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/AboutView.vue')
  },
  {
    path: '/signup',
    name: 'signup',
    component: Signup
  },
  {
    path: '/login',
    name: 'login',
    component: Login
  },
  {
    path: '/logout',
    name: 'logout',
    component: Logout
  },
  {
    path: '/recipes',
    name: 'recipes',
    component: RecipesIndex
  },
  {
    path: '/recipes/new',
    name: 'recipes-new',
    component: RecipesNew
  },
  {
    path: '/recipes/:id',
    name: 'recipes-show',
    component: RecipesShow
  },
  {
    path: '/recipes/:id/edit',
    name: 'recipes-edit',
    component: RecipesEdit
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
