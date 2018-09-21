<template>
  <transition name="slide">
    <div class="reg">
      <h1>用户注册</h1>
      <van-cell-group class="reg-from">
        <van-field v-model="userName" clearable border label="邮箱" placeholder="请输入邮箱" :error-message="userNameErr" />
        <van-field v-model="password" clearable border type="password" label="密码" placeholder="请输入密码" :error-message="passwordErr" />
        <van-field v-model="passwordRep" clearable border type="password" label="重复密码" placeholder="请再次输入密码" :error-message="passwordRepErr" />
        <van-cell>
          <van-row>
            <van-col span="24" class="btn">
              <van-button type="primary" size="small" @click="reg" :loading="loading">注册</van-button>
            </van-col>
          </van-row>
        </van-cell>
      </van-cell-group>
    </div>
  </transition>
</template>

<script>
import MD5 from 'crypto-js/md5';
import { emailCheck, pwdCheck } from '@/util/util';
import { reg } from '@/api/api';
import { Toast } from 'vant';
export default {
  data() {
    return {
      userName: '',
      password: '',
      passwordRep: '',
      userNameErr: '',
      passwordErr: '',
      passwordRepErr: '',
      loading: false
    };
  },
  methods: {
    reg() {
      this.userNameErr = '';
      this.passwordErr = '';
      this.passwordRepErr = '';
      this.loading = true;
      if (!emailCheck(this.userName)) {
        this.userNameErr = '邮箱格式不正确';
        this.loading = false;
        return;
      }
      if (!pwdCheck(this.password)) {
        this.passwordErr = '密码格式不正确';
        this.loading = false;
        return;
      }
      if (this.password !== this.passwordRep) {
        this.passwordRepErr = '两次密码不一致';
        this.loading = false;
        return;
      }
      reg({ userName: this.userName, password: MD5(this.password).toString() })
        .then(res => {
          if (res.status === 200) {
            this.loading = false;
            Toast.success('跳转登陆界面');
            setTimeout(() => {
              Toast.clear();
              this.$router.push('/login');
            }, 1000);
          } else {
            this.loading = false;
            Toast.fail(res.msg);
          }
        })
        .catch(error => {
          Toast.fail(error);
          this.loading = false;
        });
    }
  }
};
</script>

<style lang="stylus" scoped>
.reg
  width 100%
  height 100%
  text-align center
  background url('./../../images/bgc/bgc.jpg')
  background-repeat no-repeat
  background-size cover
  overflow hidden

  h1
    margin-top 40%

.reg-from
  width 80%
  text-align center
  padding 10px
  margin 0 auto
  box-shadow 0 2px 4px 0 rgba(0, 0, 0, 0.2), 0 3px 8px 0 rgba(0, 0, 0, 0.19)

  .btn
    text-align center
    margin-top 10px

.slide-enter-active, .slide-leave-active
  transition all 0.5s

.slide-enter, .slide-leave-to
  opacity 0
  transform translate3d(100%, 0, 0)
</style>
