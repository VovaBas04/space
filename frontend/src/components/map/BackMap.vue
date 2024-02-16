<script>
export default {
  name: "BackMap",
};
</script>

<template>
  <div class="rel">
    <img
      src="/materik-karta-mira-metall-chernyi-fon.jpg"
      class="my-size"
      id="img-map"
      alt="Картинка не найдена"
    />
    <slot></slot>
  </div>
</template>

<style scoped>
.rel {
  position: relative;
  height: 100vh;
  /*background-attachment: scroll;*/
  overflow: scroll;
  /*background-size: cover;*/
  /*width: 100vw;*/
}
#img-map {
  margin: auto;
  height: 100vh;
  max-width: max-content;
}
</style>