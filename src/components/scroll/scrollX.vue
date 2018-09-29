<template>
  <div ref="wrapper" class="wrapper">
    <div ref="content" class="content">
      <ul>
        <li class="li-item" ref="liItem" v-for="(item) in initData" :key="item.Goodid" @click="showGood(item)">
          <div class="img"><img :src="item.GoodImg" alt=""></div>
          <div class="title">{{item.Goodname}}</div>
          <div class="price">
            <span class="new-price">￥{{item.GoodPrice}}</span>
            <span class="old-price">
              <del>￥{{item.GoodPriceaftersale}}</del>
            </span>
          </div>
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
import BScroll from 'better-scroll';
import { mapMutations } from 'vuex';
export default {
  props: {
    probeType: {
      type: Number,
      default: 1
    },
    click: {
      type: Boolean,
      default: true
    },
    data: {
      type: Array,
      default: null
    },
    listenScroll: {
      type: Boolean,
      default: false
    }
  },
  data() {
    return {};
  },
  computed: {
    initData() {
      if (this.data.length === 0) {
        return;
      }
      var data = this.data.slice(0, 5);
      return data;
    }
  },
  watch: {
    data() {
      setTimeout(() => {
        this.refresh();
      }, 20);
    }
  },
  mounted() {
    setTimeout(() => {
      this._initScroll();
    }, 20);
  },
  methods: {
    _initScroll() {
      if (!this.$refs.wrapper) {
        return;
      } else {
        this.scroll = new BScroll(this.$refs.wrapper, {
          probeType: this.probeType,
          click: this.click,
          scrollX: true,
          scrollY: false,
          scrollbar: true,
          bounce: false,
          eventPassthrough: 'vertical'
        });
      }
      if (this.listenScroll) {
        this.scroll.on('scroll', pos => {
          this.$emit('scroll', pos);
        });
      }
    },
    _calWidth() {
      let width = 0;
      for (let i = 0; i < this.initData.length; i++) {
        width +=
          this.$refs.liItem[0].getBoundingClientRect().width +
          parseInt(getComputedStyle(this.$refs.liItem[0]).marginRight);
      }
      this.$refs.content.style.width = width + 'px';
    },
    enable() {
      this.scroll && this.scroll.enable();
    },
    disable() {
      this.scroll && this.scroll.disable();
    },
    refresh() {
      this._calWidth();
      this.scroll && this.scroll.refresh();
    },
    scrollTo() {
      this.scroll && this.scroll.scrollTo.apply(this.scroll, arguments);
    },
    scrollToElement() {
      this.scroll && this.scroll.scrollToElement.apply(this.scroll, arguments);
    },
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
.wrapper
  position relative

.li-item
  display inline-block
  width 100px
  margin-right 14px

  img
    width 100px
    height 100px

  .title
    overflow hidden
    text-overflow ellipsis
    white-space nowrap

  .new-price
    color #ff4c0a

  .old-price
    font-size 12px
    color #333
    margin-left 6px
</style>
