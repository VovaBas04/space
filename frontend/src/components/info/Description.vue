<script >
export default {
  name:"Description",
  computed:{
    description:function (){
      return this.$store.state.description
    }
  }
}
</script>

<template>
  <div class="text-2xl m-auto grid grid-cols-3" >
    <p class="justify-content-start inline-grid overflow-auto ml-20 mt-5 col-span-1"> {{description.description}}
    </p>
    <figure class="float-right col-span-2 row-span-3">
    <img class= " max-h-100" src="../../../public/materik-karta-mira-metall-chernyi-fon.jpg" alt="few"/>
      <figcaption>Деревянная скульптура</figcaption>
    </figure>
    <p class="lg:ml-20  mt-5 col-span-1">Год начала эсплуатации:<span class="m-auto">{{description.firstSend}}</span></p>
    <p class="lg:ml-20 mt-5 col-span-1">Пользователи:<span class="m-auto">{{description.provider}}</span></p>
  </div>
</template>

<style scoped>

</style>