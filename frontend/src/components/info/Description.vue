<script >
export default {
  name: "Description",
  computed: {
    description: function () {
      return this.$store.state.description;
    },
    path: function () {
      return (
        process.env.VUE_APP_BACK_URL + `/storage/${this.description.imagePlace}`
      );
    },
  },
};
</script>

<template>
  <div class="desc text-2xl">
    <div v-html="description.description"></div>

    <!--<figure class="col-span-2 row-span-3">-->
    <!--    <img class= "w-full" src="../../../public/materik-karta-mira-metall-chernyi-fon.jpg" alt="few"/>-->
    <!--<img class= "w-full" :src=path alt="few"/>
      <figcaption><a  :href=path>Карта местоположения</a> </figcaption>
    </figure>-->
    <p class="">
      Страна: <span class="m-auto">{{ description.firstSend }}</span>
    </p>
    <p class="">
      Год основания: <span class="m-auto">{{ description.createPort }}</span>
    </p>
    <p class="">
      Год начала эсплуатации:
      <span class="m-auto">{{ description.firstSend }}</span>
    </p>
    <p class="">
      Пользователи: <span class="m-auto">{{ description.provider }}</span>
    </p>
  </div>
</template>

<style scoped>
.desc {
  padding-bottom: 15px;
}
</style>