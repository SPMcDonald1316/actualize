import Vue from 'vue';
import App from './App.vue';
import router from './router';
import axios from "axios";
import JwPagination from 'jw-vue-pagination';
import HighchartsVue from 'highcharts-vue';

Vue.use < (HighchartsVue);

Vue.component('jw-pagination', JwPagination);

axios.defaults.baseURL = 
  process.env.NODE_ENV === "development" ? "http://localhost:3000" : "/";

Vue.config.productionTip = false;

new Vue({
  router,
  render: h => h(App)
}).$mount('#app');
