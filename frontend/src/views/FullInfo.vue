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
  },
  beforeMount() {
    this.descriptionInfo();
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
        class="header grid gap-5 grid-rows-auto grid-cols-[1fr_2fr_1fr] border-b border-[#66fcf1]"
      >
        <Logo :path-flag="path" class="justify-self-end" />
        <h1 class="text-6xl font-bold textxt justify-self-center">
          Космодром {{ this.description.title }}
        </h1>
        <div></div>
      </div>

      <div
        class="description indent-20 grid justify-items-space-between grid-flow-row grid-cols-2 gap-10 marg"
      >
        <Description />
        <img :src="schemes[0].image" class="img" />
      </div>

      <div class="supportInfo indent-20">
        <!--<SupportInfo
          title="Местоположение, занимаемая площадь"
          :description="description.aboutPlace"
        >
          Общая площадь космодрома: {{ this.description.area }} км²
        </SupportInfo>-->

        <!--<SupportInfo title="Назначение" :description="description.target">
        </SupportInfo>-->

        <div class="marg text-2xl">
          <h3 class="underline font-bold">
            Местоположение, занимаемая площадь
          </h3>
          <div v-html="description.otherInfo"></div>
          <p>Координаты: 46° с.ш. и 63° в.д.</p>
          <p>Общая площадь космодрома: {{ this.description.area }} км²</p>
        </div>

        <div class="marg text-2xl">
          <h3 class="underline font-bold">Назначение</h3>
          <div v-html="description.target"></div>
        </div>

        <div v-if="description.presentState != ''" class="marg text-2xl">
          <h3 class="underline font-bold">Текущее состояние</h3>
          <div v-html="description.presentState"></div>
        </div>

        <div v-if="description.otherInfo != ''" class="marg text-2xl">
          <div v-html="description.otherInfo"></div>
        </div>
      </div>
    </div>

    <ButtonGroup :routes="navNames" />
  </div>
</template>

<style scoped>
.fullInfo {
  max-width: 100vw;
  /*background-color: black;*/
  /*height: 100vh;*/
  /*padding: 30px;*/
}
.supportInfo {
  margin: 0 100px;
  overflow-wrap: break-word;
}
.img {
  /*min-height: 30vh;*/
  /*max-height: 40vh;*/
}
.description {
  /*grid-auto-columns: 150px;*/
  margin: 0 100px;
  overflow-wrap: break-word;
  /*grid-auto-flow: row;*/
}
.marg {
  margin-top: 30px;
}
.header {
  padding: 30px 100px;
  position: relative;
}
.textxt {
  margin: auto;
  text-align: center;
}
@media (max-width: 900px) {
  .header {
    display: block;
  }
}
@media (max-width: 1200px) {
  .description {
    display: block;
  }
}
</style>