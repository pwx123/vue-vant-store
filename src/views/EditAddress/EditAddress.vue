<template>
  <transition name="slide">
    <div>
      <van-nav-bar title="地址编辑"
        left-text="返回"
        left-arrow
        @click-left="goBack"
        :z-index="10"
        fixed />
    </div>
  </transition>
</template>

<script>
import { mapGetters } from 'vuex';
export default {
  data() {
    return {};
  },
  mounted() {
    console.log(this.editAddress);
  },
  computed: {
    ...mapGetters(['editAddress'])
  },
  methods: {
    goBack() {
      this.$router.go(-1);
    }
  }
};
</script>

<style lang="stylus" scoped>
.slide-enter-active, .slide-leave-active
  transition all 0.3s

.slide-enter, .slide-leave-to
  opacity 0
  transform translate3d(100%, 0, 0)
</style>
