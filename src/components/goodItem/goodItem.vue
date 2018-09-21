<template>
  <div class="good-item">
    <div class="head">
      <span class="border"></span>
      <span class="title">{{title}}</span>
      <span class="describe">{{describe}}</span>
      <span v-if="moreRoute">
        <router-link :to="moreRoute" class="more">更多</router-link>
      </span>
    </div>
    <slot></slot>
  </div>
</template>

<script>
export default {
  props: {
    title: String,
    describe: String,
    moreRoute: {
      type: String,
      default: ''
    }
  }
};
</script>

<style lang="stylus" scoped>
.good-item
  background-color #fff
  padding 4px 6px
  margin-bottom 6px

  .head
    padding 4px 0

    .border
      border-left 3px solid red

    .title
      margin-left 6px
      font-weight 700

    .describe
      font-size 12px
      margin-left 6px
      color #8f8f8f

    .more
      float right
      color #000
      border-radius 10px
      font-size 12px
      border 1px solid #000
      padding 0 6px
</style>
