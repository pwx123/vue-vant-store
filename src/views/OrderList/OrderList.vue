<template>
  <transition name="slide">
    <div class="orderlist">
      <van-nav-bar title="全部订单"
        left-text="返回"
        left-arrow
        @click-left="goBack"
        :z-index="10"
        fixed />
      <div class="list-box">
        <van-panel title="订单"
          class="list"
          v-for="order in orderList"
          :key="order.Orderid">
          <van-card v-for="good in order.goods"
            class="list-item"
            :key="good.Goodid"
            :title="good.Goodname.substr(0,10)"
            :desc="good.Gooddescribe"
            :num="good.Count"
            :price="good.GoodPriceaftersale"
            :thumb="good.GoodImg">
            <div slot="footer">
              <van-button size="mini"
                @click="goGood(good)">查看商品</van-button>
            </div>
          </van-card>
          <van-cell-group>
            <van-cell title="合计"
              style="color:#f44"
              :value="'￥'+formatPrice(order.totalMoney)" />
          </van-cell-group>
        </van-panel>
      </div>
      <div class="order-footer"
        v-if="orderList.length>3">到底了~</div>
    </div>
  </transition>
</template>

<script>
import { mapMutations } from 'vuex';
import { getOrder, getGoodById } from '@/api/api';
export default {
  data() {
    return {
      orderList: []
    };
  },
  mounted() {
    getOrder()
      .then(result => {
        this.orderList = result.data;
      })
      .catch(error => {
        console.log(err);
      });
  },
  methods: {
    goBack() {
      this.$router.push('/User');
    },
    goGood(item) {
      this.setGood(item);
      this.$router.push('/Good');
    },
    formatPrice(price) {
      return price.toFixed(2);
    },
    ...mapMutations({
      setGood: 'SET_GOOD_MUTATION'
    })
  }
};
</script>
<style lang="stylus" scoped>
.orderlist {
  background-color #eee
}

.list-box {
  padding-top 46px

  .list {
    margin-top 20px

    &:first-child {
      margin-top 0
    }
  }
}

.order-footer {
  height 50px
  margin-top 20px
  text-align center
  font-size 14px
}

.slide-enter-active, .slide-leave-active {
  transition all 0.3s
}

.slide-enter, .slide-leave-to {
  opacity 0
  transform translate3d(100%, 0, 0)
}
</style>
