<script>
import Description from "@/components/info/Description.vue";
import SupportInfo from "@/components/info/SupportInfo.vue";
import Logo from "@/components/info/Logo.vue";

export default{
  name:"FullInfo",
  components:{Logo, SupportInfo, Description},
  methods:{
    descriptionInfo:async function (){
      let data = (await (await fetch(process.env.VUE_APP_BACK_URL+`/api/v1/space-port/${this.$route.params.id}/description`)).json())
      this.$store.commit('setDescription',data)
    }
  },
  created() {
    this.descriptionInfo()
  }
}
</script>

<template>
  <div class="grid grid-cols-3 text-white ">
    <Logo/>
    <h1 class="col-span-2 mb-2  text-6xl  font-bold  tracking-tight  dark:text-white">Космодром Байконур</h1>
    <Description class="col-span-3"/>
    <SupportInfo class="col-span-2" title="Местоположение,занимаемая площадь"/>
    <SupportInfo class="col-span-2" title="Назначение"/>
  </div>
</template>

<style scoped>
div{
  background-color:black ;
}
</style>