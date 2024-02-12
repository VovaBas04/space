<template lang="">
  <div class="statistics min-h-screen relative">
    <div class="relative slide">
      <div class="flex justify-center content-center items-center pt-12 relative">

        <button type="button" class="relative flex items-center justify-center h-full px-4 cursor-pointer group focus:outline-none" @click="active = (active != 0 ? ((active - 1) % statistics.length) : statistics.length - 1)">
          <span class="inline-flex items-center justify-center w-10 h-10 rounded-full bg-white/30 dark:bg-gray-800/30 group-hover:bg-white/50  group-active:ring-4 group-active:ring-[#66fcf1]  group-active:outline-none">
            <svg class="w-4 h-4 mr-0.5  bg-transparent" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 6 10">
              <path stroke="#66fcf1" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 1 1 5l4 4"/>
            </svg>
            <span class="sr-only">Предыдущее</span>
          </span>
        </button>


        <div class="carousel-inner relative overflow-hidden max-w-4xl  flex place-items-center">

          <div v-for="(obj, i) in statistics" :id="`slide-${i}`" :key="i" :class="`${active === i ? 'active' : (((active + 1) % statistics.length) == i ? 'right-full' : 'left-full')}`" class="flex items-center self-center carousel-item  relative w-full transform transition-all duration-500 ease-in-out ">
            <img class="m-auto" :src="obj.image" alt="First slide" />
            <figcaption class="text-center p-4"> {{obj.caption}} </figcaption>
          </div>

        </div>

        <button type="button" class="relative flex items-center justify-center h-full px-4 cursor-pointer group focus:outline-none" @click="active = ((active + 1) % statistics.length)">
          <span class="inline-flex items-center justify-center w-10 h-10 rounded-full bg-white/30 dark:bg-gray-800/30 group-hover:bg-white/50  group-active:ring-4 group-active:ring-[#66fcf1]  group-active:outline-none">
            <svg class="w-4 h-4 ml-0.5  bg-transparent" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 6 10">
              <path stroke="#66fcf1" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 9 4-4-4-4"/>
            </svg>
            <span class="sr-only">Следующее</span>
          </span>
        </button>
      </div>

      <div class="carousel-indicators flex bg-transparent h-12 w-full justify-center items-center">
        <ol class="flex space-x-4">
          <li 
          v-for="(obj, i) in statistics" 
          :key="i" 
          class="w-4 h-4 border border-[#66fcf1] rounded-full cursor-pointer" 
          :class="`${i == active ? 'bg-[#66fcf1]' : ''} `"
          @click="active = i">
          </li>
        </ol>
      </div>

    </div>
    <ButtonGroup :routes="navNames" class="relative bottom-0"/>
  </div>
 

</template>
<script>
import ButtonGroup from "@/components/ButtonGroup.vue";
export default {
  components: { ButtonGroup },
  data: () => ({
    statistics: [
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
    active: 0,
    navNames: [{ name: "Map", text: "Карты" }],
  }),
  beforeMount() {
    //this.getStatistics(this.$route.params.id).then((data) => {
    //  this.statistics = data;
    //  console.log(this.images);
    //});
  },
  methods: {
    getStatistics: async (id) => {
      return (
        await fetch(process.env.VUE_APP_BACK_URL + "/api/v1/statistics/" + id, {
          mode: "cors",
          headers: {
            "Content-Type": "application/json",
          },
        })
      ).json();
    },
  },
};
</script>
<style scoped>
.left-full {
  left: -100%;
}
.right-full {
  right: -100%;
}
.carousel-item {
  position: relative;
  display: block;
  width: 100%;
  margin-right: -100%;
  backface-visibility: hidden;
}
</style>