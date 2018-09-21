<template>
  <transition name="slide">
    <div class="good">
      <div class="back-btn"
        @click="goBack">
        <van-icon name="arrow-left" />
      </div>
      <van-swipe class="swipe"
        style="height:375px">
        <van-swipe-item v-for="item in [1,2,3]"
          :key="item">
          <img src="@/images/swipe/swipe1-2.jpg"
            alt="图片">
        </van-swipe-item>
      </van-swipe>
      <van-cell-group class="good-detail">
        <van-cell>
          <div class="good-title">
            <span>{{good.Goodname}}</span>
            <span class="good-price">￥{{good.GoodPriceaftersale}}</span>
          </div>
          <div class="good-desc">{{good.Gooddescribe}}</div>
        </van-cell>
        <van-cell class="goods-yunfei">
          <van-row>
            <van-col span="12"
              class="goods-yun">运费：{{good.Gooddealprice===0?'免运费':good.Gooddealprice+'元'}}</van-col>
            <van-col span="12"
              class="goods-yun">剩余：{{good.Goodcount}}</van-col>
          </van-row>
        </van-cell>
      </van-cell-group>
      <van-cell-group class="goods-cell-group dianpu">
        <van-cell value="商家店铺"
          icon="shop"
          is-link>
          <template slot="title">
            <span class="van-cell-text">进入店铺</span>
          </template>
        </van-cell>
        <van-cell title="线下门店"
          icon="location"
          is-link />
      </van-cell-group>
      <van-cell-group class="goods-cell-group xiangqing">
        <van-cell title="查看商品详情"
          is-link
          @click="scrollToDetail" />
      </van-cell-group>
      <div class="detail"
        ref="detail">
        <img src="@/images/detail/detail-1.jpg"
          alt="">
        <img src="@/images/detail/detail-2.jpg"
          alt="">
        <img src="@/images/detail/detail-3.jpg"
          alt="">
        <img src="@/images/detail/detail-4.jpg"
          alt="">
        <img src="@/images/detail/detail-5.jpg"
          alt="">
        <img src="@/images/detail/detail-6.jpg"
          alt="">
      </div>
      <van-goods-action>
        <van-goods-action-mini-btn icon="chat"
          text="客服" />
        <van-goods-action-mini-btn icon="cart"
          text="购物车"
          to="/Cart" />
        <van-goods-action-mini-btn icon="shop"
          text="店铺" />
        <van-goods-action-big-btn @click="showSkuModal"
          text="加入购物车" />
        <van-goods-action-big-btn @click="showSkuModal"
          text="立即购买"
          primary />
      </van-goods-action>
      <van-sku v-model="showBase"
        :sku="sku"
        :goods="goods"
        :goods-id="goodsId"
        @buy-clicked="onBuyClicked"
        @add-cart="onAddCartClicked"
        @stepper-change="getCount" />
    </div>
  </transition>
</template>

<script>
import { mapGetters, mapMutations } from 'vuex';
import { addToCart } from '@/api/api';
export default {
  data() {
    return {
      loading: true,
      cartCount: '',
      showBase: false,
      sku: {},
      goods: {},
      goodsId: 1,
      count: 1
    };
  },
  mounted() {
    if (!this.good.Goodname) {
      this.$router.push('/');
    }
    this.goods = {
      title: this.good.Goodname,
      picture: this.good.GoodImg
    };
    this.sku = {
      tree: [
        {
          k: '颜色',
          k_id: '1',
          v: [
            {
              id: '30349',
              name: '天蓝色',
              imgUrl: this.good.GoodImg
            }
          ],
          k_s: 's1',
          count: 2
        },
        {
          k: '尺寸',
          k_id: '2',
          v: [
            {
              id: '1193',
              name: '1'
            },
            {
              id: '1194',
              name: '2'
            }
          ],
          k_s: 's2',
          count: 2
        }
      ],
      list: [
        {
          id: 2259,
          price: 100,
          discount: 100,
          code: '',
          s1: '1215',
          s2: '1193',
          s3: '0',
          s4: '0',
          s5: '0',
          extend: null,
          kdt_id: 55,
          discount_price: 0,
          stock_num: 110,
          stock_mode: 0,
          is_sell: null,
          combin_sku: false,
          goods_id: 946755
        },
        {
          id: 2260,
          price: 100,
          discount: 100,
          code: '',
          s1: '1215',
          s2: '1194',
          s3: '0',
          s4: '0',
          s5: '0',
          extend: null,
          kdt_id: 55,
          discount_price: 0,
          stock_num: 0,
          stock_mode: 0,
          is_sell: null,
          combin_sku: false,
          goods_id: 946755
        },
        {
          id: 2257,
          price: 100,
          discount: 100,
          code: '',
          s1: '30349',
          s2: '1193',
          s3: '0',
          s4: '0',
          s5: '0',
          extend: null,
          kdt_id: 55,
          discount_price: 0,
          stock_num: 999,
          stock_mode: 0,
          is_sell: null,
          combin_sku: false,
          goods_id: 946755
        },
        {
          id: 2258,
          price: 100,
          discount: 100,
          code: '',
          s1: '30349',
          s2: '1194',
          s3: '0',
          s4: '0',
          s5: '0',
          extend: null,
          kdt_id: 55,
          discount_price: 0,
          stock_num: 655,
          stock_mode: 0,
          is_sell: null,
          combin_sku: false,
          goods_id: 946755
        }
      ],
      price: this.good.GoodPriceaftersale,
      stock_num: 227,
      collection_id: 2261,
      collection_price: 0,
      none_sku: false,
      sold_num: 0,
      min_price: '1.00',
      max_price: '1.00',
      hide_stock: false
    };
  },
  computed: {
    ...mapGetters(['good'])
  },
  methods: {
    onBuyClicked() {
      var obj = Object.assign({ Cartcount: this.count }, this.good);
      this.setOrderGood([obj]);
      this.$router.push('/Order');
    },
    onAddCartClicked() {
      var params = {
        id: this.good.Goodid,
        num: this.count
      };
      addToCart(params)
        .then(result => {
          console.log(result);
          this.showBase = false;
          this.$toast.success('添加成功');
        })
        .catch(error => {
          console.log(error);
        });
    },
    getCount(value) {
      this.count = value;
    },
    showSkuModal() {
      this.showBase = true;
    },
    scrollToDetail() {
      this.$refs.detail.scrollIntoView();
    },
    goBack() {
      this.$router.go(-1);
    },
    ...mapMutations({
      setOrderGood: 'SET_ORDERGOOD_MUTATION'
    })
  }
};
</script>
<style lang="stylus" scoped>
.good
  padding-bottom 50px

  .back-btn
    position fixed
    z-index 999
    top 10px
    left 10px
    width 30px
    height 30px
    border-radius 50%
    color #fff
    line-height 32px
    text-align center
    background-color rgba(102, 102, 102, 0.4)

    i
      font-weight 700
      margin-left -2px
      margin-top 4px

.swipe img
  width 100%
  height auto
  display block

.good-detail
  .good-title
    font-size 16px

  .good-price
    color red
    margin-left 10px

.goods-yunfei
  padding 5px 15px

  .goods-yun
    font-size 12px
    color #999

.detail img
  width 100%
  height auto

.dianpu, .xiangqing
  margin 0.3rem 0

.slide-enter-active, .slide-leave-active
  transition all 0.3s

.slide-enter, .slide-leave-to
  opacity 0
  transform translate3d(100%, 0, 0)
</style>
