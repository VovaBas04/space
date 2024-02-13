<script>
import Description from "@/components/info/Description.vue";
import SupportInfo from "@/components/info/SupportInfo.vue";
import Logo from "@/components/info/Logo.vue";
import StatisticSend from "@/components/info/ImageSometing.vue";
import ButtonGroup from "@/components/ButtonGroup.vue";

export default {
  name: "FullInfo",
  components: { StatisticSend, Logo, SupportInfo, Description, ButtonGroup },
  data: () => ({
    navNames: [
      { name: "Schemes", text: "Схемы" },
      { name: "Rockets", text: "Ракеты" },
      { name: "Statistics", text: "Статистика" },
    ],
    schemes: [
      {
        image: "/scheme.jpg",
        caption: "какое то описание",
      },
      {
        image: "/rockets.jpg",
        caption: "какое то описание",
      },
      {
        image: "/statistics.jpg",
        caption: "какое то описание",
      },
    ],
  }),
  methods: {
    descriptionInfo: async function () {
      let data = await (
        await fetch(
          process.env.VUE_APP_BACK_URL +
            `/api/v1/space-port/${this.$route.params.id}/description`
        )
      ).json();
      this.$store.commit("setDescription", data);
    },
    getSchemes: async (id) => {
      return (
        await fetch(process.env.VUE_APP_BACK_URL + "/api/v1/schemes/" + id, {
          mode: "cors",
          headers: {
            "Content-Type": "application/json",
          },
        })
      ).json();
    },
  },
  created() {
    this.descriptionInfo();
  },
  beforeMount() {
    //this.getSchemes(this.$route.schemes.id).then((data) => {
    //  this.schemes = data;
    //  console.log(this.images);
    //});
  },
  computed: {
    description: function () {
      return this.$store.state.description;
    },
    path: function () {
      return process.env.VUE_APP_BACK_URL + `/storage/${this.description.logo}`;
    },
  },
};
</script>

<template>
  <div class="fullInfo">
    <div class="grid grid-rows-auto text-white">
      <div
        class="header grid justify-items-center grid-rows-auto grid-cols-[1fr_3fr]"
      >
        <Logo :path-flag="path" />
        <h1 class="text-6xl font-bold">
          {{ this.description.title }}
        </h1>
      </div>
      <div
        class="description grid justify-items-center grid-flow-row grid-cols-2 indent-20"
      >
        <Description class="" />
        <img :src="schemes[0].image" class="img" />
      </div>
      <div class="supportInfo indent-20">
        <SupportInfo
          title="Местоположение,занимаемая площадь"
          :description="description.aboutPlace"
        >
          Занимаемая площадь:{{ this.description.area }}
        </SupportInfo>
        <SupportInfo title="Назначение" :description="description.target">
        </SupportInfo>
      </div>
    </div>
    <ButtonGroup :routes="navNames" class="" />
  </div>
</template>

<style scoped>
.fullInfo {
  /*background-color: black;*/
  /*height: 100vh;*/
  padding: 30px;
}
.img {
  /*min-height: 30vh;*/
  max-height: 40vh;
}
.description {
  grid-auto-columns: 150px;
  /*grid-auto-flow: row;*/
}
</style>