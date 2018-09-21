<template>
  <div class="tab-item">
    <div class="item" v-for="item in data" :key="item.Goodid" @click="showGood(item)">
      <div class="item-detail">
        <img v-lazy="item.GoodImg" alt="">
        <div class="desc">{{item.Gooddescribe}}</div>
        <div class="price">
          <span class="new-price">￥{{item.GoodPrice}}</span>
          <span class="old-price">
            <del>￥{{item.GoodPriceaftersale}}</del>
          </span>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { mapMutations } from 'vuex';
export default {
  props: {
    data: {
      type: Array,
      default: () => []
    }
  },
  methods: {
    showGood(item) {
      this.setGood(item);
      this.$router.push('/Good');
    },
    ...mapMutations({
      setGood: 'SET_GOOD_MUTATION'
    })
  }
};
</script>

<style lang="stylus" scoped>
.tab-item
  display flex
  flex-wrap wrap

  .item
    width 50%

    &:nth-child(2n) .item-detail
      margin-right 6px

    &:nth-last-child(1) .item-detail, &:nth-last-child(2) .item-detail
      margin-bottom 6px

    .item-detail
      background-color #fff
      margin 6px 0 0 6px

      img
        width 100%
        height 180px

      .desc
        height 36px
        padding 4px
        font-size 14px
        display -webkit-box
        -webkit-box-orient vertical
        -webkit-line-clamp 2
        overflow hidden

      .new-price
        margin-left 2px
        color #ff4c0a

      .old-price
        font-size 12px
        color #333
        margin-left 6px
</style>
