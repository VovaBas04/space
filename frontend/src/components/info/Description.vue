<script >
export default {
  name:"Description",
  computed:{
    description:function (){
      return this.$store.state.description
    },
    path:function (){
      return process.env.VUE_APP_BACK_URL + `/storage/${this.description.imagePlace}`
    }
  }
}
</script>

<template>
  <div class="text-2xl grid grid-cols-3" >
    <p class="justify-content-start inline-grid overflow-auto ml-20 mt-5 col-span-1"> {{description.description}}
    </p>
    <figure class="col-span-2 row-span-3">
<!--    <img class= "w-full" src="../../../public/materik-karta-mira-metall-chernyi-fon.jpg" alt="few"/>-->
          <img class= "w-full" :src=path alt="few"/>
      <figcaption><a  :href=path>Карта местоположения</a> </figcaption>
    </figure>
    <p class="lg:ml-20  mt-5 col-span-1 ">Год начала эсплуатации:<span class="m-auto">{{description.firstSend}}</span></p>
    <p class="lg:ml-20 mt-5 col-span-1 ">Пользователи:<span class="m-auto">{{description.provider}}</span></p>
  </div>
</template>

<style scoped>
</style>