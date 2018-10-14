<template>
  <div class="github">
    <div class="github-content">
      <a href="https://github.com/pwx123/vue-vant-store" target="_blank">github</a>
      <div class="github-desc">
        <div>点击查看介绍</div>
      </div>
    </div>
  </div>
</template>

<script>
export default {};
</script>

<style lang="stylus" scoped>
.github {
  width: 60px;
  height: 30px;
  line-height: 30px;
  text-align: center;
  font-weight: bolder;
  color: #fff;
  background-color: #38f;
  border-bottom-left-radius: 6px;
  border-bottom-right-radius: 6px;
}

.github a {
  color: #fff;
}

.github-content {
  position: relative;
}

.github-desc {
  position: absolute;
  background-color: #fff;
  font-weight: normal;
  top: -50px;
  color: #000;
  font-size: 12px;
  width: 100px;
  border-radius: 4px;
  left: -20px;
  animation: tips 5s;
  border: 1px solid #38f;
}

@keyframes tips {
  0% {
    top: 32px;
  }

  20% {
    top: 38px;
  }

  40% {
    top: 32px;
  }

  60% {
    top: 38px;
  }

  80% {
    top: 32px;
  }

  100% {
    top: -50px;
  }
}
</style>
