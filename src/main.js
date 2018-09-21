import Vue from 'vue';
import App from './App.vue';
import Vant from 'vant';
import { Lazyload } from 'vant';
import 'vant/lib/vant-css/index.css';
import router from './router';
import store from './store';
Vue.use(Vant);
Vue.use(Lazyload);
Vue.config.productionTip = false;

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app');
