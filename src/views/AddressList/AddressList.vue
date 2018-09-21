<template>
  <transition name="slide">
    <div>
      <van-nav-bar title="地址列表"
        left-text="返回"
        left-arrow
        @click-left="goBack"
        :z-index="10"
        fixed />
      <van-address-list v-model="chosenAddressId"
        class="address-list"
        :list="list"
        @add="onAdd"
        @edit="onEdit"
        @select="onSelect" />
    </div>
  </transition>
</template>

<script>
import { mapGetters, mapMutations } from 'vuex';
export default {
  data() {
    return {
      chosenAddressId: ''
    };
  },
  mounted() {
    this.getDefaultId();
    console.log(this.chosenAddressId);
  },
  computed: {
    list() {
      var arr = [];
      this.addressList.forEach(item => {
        var obj = {};
        obj.id = item.Addressid;
        obj.name = item.Name;
        obj.tel = item.Phonenum;
        obj.address = item.Address + item.AddressDetail;
        arr.push(obj);
      });
      return arr;
    },
    ...mapGetters(['addressList'])
  },
  methods: {
    onAdd() {},
    onEdit(item) {
      let id = item.id;
      for (let i = 0; i < this.addressList.length; i++) {
        if (this.addressList[i].Addressid == id) {
          var address = this.addressList[i];
          this.setEditAddress(address);
          this.$router.push('/EditAddress');
          break;
        }
      }
    },
    onSelect() {
      this.setAddressId(this.chosenAddressId);
    },
    getDefaultId() {
      let id = '';
      for (let i = 0; i < this.addressList.length; i++) {
        if (this.addressList[i].Isdefault === 1) {
          id = this.addressList[i].Addressid;
          break;
        }
      }
      this.chosenAddressId = id;
    },
    goBack() {
      this.$router.go(-1);
    },
    ...mapMutations({
      setAddressId: 'SET_ADDRESSID_MUTATION',
      setEditAddress: 'SET_EDITADDRESS_MUTATION'
    })
  }
};
</script>

<style lang="stylus" scoped>
.address-list
  padding-top 46px

.slide-enter-active, .slide-leave-active
  transition all 0.3s

.slide-enter, .slide-leave-to
  opacity 0
  transform translate3d(100%, 0, 0)
</style>
