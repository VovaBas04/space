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
  created() {
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
  <div class="fullInfo grid">
    <div class="grid grid-cols-3 text-white">
      <Logo :path-flag="path" />
      <h1
        class="col-span-2 mb-2 text-6xl font-bold tracking-tight dark:text-white"
      >
        {{ this.description.title }}
      </h1>
      <Description class="col-span-3" />
      <SupportInfo
        class="col-span-2"
        title="Местоположение,занимаемая площадь"
        :description="description.aboutPlace"
      >
        Занимаемая площадь:{{ this.description.area }}
      </SupportInfo>
      <SupportInfo
        class="col-span-2"
        title="Назначение"
        :description="description.target"
      >
      </SupportInfo>
    </div>
    <ButtonGroup :routes="navNames" />
  </div>
</template>

<style scoped>
.fullInfo {
  /*background-color: black;*/
  /*height: 100vh;*/
  padding: 30px;
}
</style>