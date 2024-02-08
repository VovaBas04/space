<script>
export default {
  name: "ImageSomething",
  props:['pathImage','caption'],
  computed:{
    path:function (){
      return process.env.VUE_APP_BACK_URL + `/storage/${this.pathImage}`
    }
  }
}
</script>

<template>
  <img class="w-full mt-10 col-span-3" :src="path" alt="Не найдено">
  <figcaption class="col-span-3 text-3xl text-center">{{caption}}</figcaption>
  <div class="mt-3 text-center mb-3">
    <div>
      <button
              type="button"
              class="btn btn-lg btn-dark mb-3"
              >
      </button>
    </div>
    <div>
      <button
              type="button"
              class="btn btn-lg btn-dark mb-3"
      >
        Next >
      </button>
    </div>
  </div>
</template>

<style scoped>
</style>