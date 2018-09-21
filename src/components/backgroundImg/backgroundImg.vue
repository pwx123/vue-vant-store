<template>
  <div :style="bgcImg" class="bgc-img">
    <div class="text">
      <div class="topic"># {{topic}}</div>
      <div class="desc">{{desc}}</div>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    imgSrc: {
      type: String,
      default: ''
    },
    topic: {
      type: String,
      default: ''
    },
    desc: {
      type: String,
      default: ''
    }
  },
  mounted() {},
  computed: {
    bgcImg() {
      return {
        backgroundImage: `url(${this.imgSrc})`,
        backgroundSize: 'cover'
      };
    }
  }
};
</script>

<style lang="stylus" scoped>
.bgc-img
  position relative

  &:after
    position absolute
    top 0
    left 0
    content ''
    background-color rgba(0, 0, 0, 0.3)
    z-index 1
    width 100%
    height 100%

  .text
    position absolute
    z-index 2
    left 6px
    bottom 8px
    width 100%
    color #fff
    font-size 14px

    .desc
      width 90%
      overflow hidden
      text-overflow ellipsis
      white-space nowrap
</style>
