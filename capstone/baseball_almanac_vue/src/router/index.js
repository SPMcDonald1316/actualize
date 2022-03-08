import Vue from 'vue';
import VueRouter from 'vue-router';
import Home from '../views/Home.vue';
import FranchisesIndex from '../views/FranchisesIndex.vue';
import FranchisesShow from '../views/FranchisesShow.vue';
import FranchisesStats from '../views/FranchisesStats.vue';
import GameBoxScore from '../views/GameBoxScore.vue';
import PlayersIndex from '../views/PlayersIndex.vue';
import PlayersShow from '../views/PlayersShow.vue';

Vue.use(VueRouter);

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/about',
    name: 'About',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  },
  {
    path: '/franchises',
    name: 'franchises-index',
    component: FranchisesIndex
  },
  {
    path: '/franchises/:franch_id',
    name: 'franchises-show',
    component: FranchisesShow
  },
  {
    path: '/franchises/:franch_id/:year_id',
    name: 'franchises-stats',
    component: FranchisesStats
  },
  {
    path: '/games/:game_id',
    name: 'game-boxscore',
    component: GameBoxScore
  },
  {
    path: '/players/:search',
    name: 'players-index',
    component: PlayersIndex
  },
  {
    path: '/player/:id',
    name: 'players-show',
    component: PlayersShow
  }
];

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
});

export default router;
