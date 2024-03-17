<script>
export default {
  name: "BackMap",
};
</script>

<template>
  <div class="jki">
    <div class="rel" id="element">
      <img
        src=/storage/materik-karta-mira-metall-chernyi-fon.jpg
        class="my-size"
        id="img-map"
        alt="Картинка не найдена"
      />
      <slot></slot>
    </div>
  </div>
</template>

<style scoped>
.rel {
  position: relative;
  /*width: 100%;*/
  overflow-y: hidden;
}
.jki {
  margin: 0 auto;
  width: fit-content;
  height: 100vh;
  overflow-y: hidden;
}
#img-map {
  /*margin: auto;*/
  height: 100vh;
  max-width: max-content;
  overflow: hidden;
}
</style>