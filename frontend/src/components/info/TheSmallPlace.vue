<script>
export default {
  name: "ThrSmallPlace",
  props:['pathImage'],
  computed:{
    path:function (){
      return process.env.VUE_APP_BACK_URL + `/storage/${this.pathImage}`
    }
  }
}
</script>

<template>
  <img class="w-full mt-10 col-span-3" :src="path" alt="Не найдено">
  <figcaption class="col-span-3 text-3xl text-center"><a :href="path" >Смотреть график</a></figcaption>
</template>

<style scoped>
</style>