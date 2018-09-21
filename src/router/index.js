import Vue from 'vue';
import Router from 'vue-router';
const Home = () => import(/* webpackChunkName: "Home" */ '@/views/Home/Home');
const Cart = () => import(/* webpackChunkName: "Cart" */ '@/views/Cart/Cart');
const User = () => import(/* webpackChunkName: "User" */ '@/views/User/User');
const Login = () => import(/* webpackChunkName: "Login" */ '@/views/Login/Login');
const Reg = () => import(/* webpackChunkName: "Reg" */ '@/views/Reg/Reg');
const Good = () => import(/* webpackChunkName: "Good" */ '@/views/Good/Good');
const NotFound = () => import(/* webpackChunkName: "NotFound" */ '@/views/NotFound/NotFound');
const Order = () => import(/* webpackChunkName: "Order" */ '@/views/Order/Order');
const AddressList = () => import(/* webpackChunkName: "AddressList" */ '@/views/AddressList/AddressList');
const EditAddress = () => import(/* webpackChunkName: "EditAddress" */ '@/views/EditAddress/EditAddress');
const OrderList = () => import(/* webpackChunkName: "OrderList" */ '@/views/OrderList/OrderList');

Vue.use(Router);

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Home',
      component: Home
    },
    {
      path: '/Cart',
      name: 'Cart',
      component: Cart
    },
    {
      path: '/User',
      name: 'User',
      component: User
    },
    {
      path: '/Login',
      name: 'Login',
      component: Login,
      meta: {
        fullScreen: true
      }
    },
    {
      path: '/Reg',
      name: 'Reg',
      component: Reg,
      meta: {
        fullScreen: true
      }
    },
    {
      path: '/Good',
      name: 'Good',
      component: Good,
      meta: {
        fullScreen: true
      }
    },
    {
      path: '/Order',
      name: 'Order',
      component: Order,
      meta: {
        fullScreen: true
      }
    },
    {
      path: '/AddressList',
      name: 'AddressList',
      component: AddressList,
      meta: {
        fullScreen: true
      }
    },
    {
      path: '/EditAddress',
      name: 'EditAddress',
      component: EditAddress,
      meta: {
        fullScreen: true
      }
    },
    {
      path: '/OrderList',
      name: 'OrderList',
      component: OrderList,
      meta: {
        fullScreen: true
      }
    },
    {
      path: '*',
      name: 'Notfound',
      component: NotFound,
      meta: {
        fullScreen: true
      }
    }
  ],
  scrollBehavior(to, from, savedPosition) {
    return {
      x: 0,
      y: 0
    };
  }
});
