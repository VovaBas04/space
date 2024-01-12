<script>
import BackMap from "@/components/map/BackMap.vue";
import SpacePort from "@/components/map/SpacePort.vue";

export default {
  name: "WorldMap",
  components: {BackMap, SpacePort},

  data: function () {
    return {
      smallDescriptionInfo: Array,
      coordinatesInfo: Array

    }
  },
  methods: {
    smallInfo: async function (suffix) {
      return (await fetch(process.env.VUE_APP_BACK_URL + '/api/v1/space-port/' + suffix, {
        mode: "cors",
        headers: {
          'Content-Type': 'application/json'
        }
      },)).json()
    },
    info: function (ev) {
      window.location.href = process.env.VUE_APP_BACK_URL + '/admin/space-ports/create' + '?x=' + Math.round(ev.screenX/window.innerWidth*100) + '&&y=' + Math.round(ev.screenY/window.innerHeight*100);
    }
  },
  beforeMount() {
    this.smallInfo('map').then((data) => {
      this.coordinatesInfo = data
      console.log(this.coordinatesInfo[0])
    })
    this.smallInfo('info').then((data) => {
      this.smallDescriptionInfo = data
    })
  }
}
</script>

<template>
  <BackMap @dblclick="info($event)">

    <SpacePort v-for="coordinateInfo in coordinatesInfo"
               :key="coordinateInfo.id"
               :x="coordinateInfo.coordinate.positionX"
               :y="coordinateInfo.coordinate.positionY"
               :titlePort="coordinateInfo.title"
               :country="coordinateInfo.country.flag"
               :id="coordinateInfo.id"
    ></SpacePort>
  </BackMap>
</template>

<style scoped>

</style>