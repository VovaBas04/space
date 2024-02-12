<script>
export default {
  name: "BackMap",
};
</script>

<template>
  <div class="rel">
    <!--<img
      src="../../../public/materik-karta-mira-metall-chernyi-fon.jpg"
      class="my-size"
      alt="Картинка не найдена"
    />-->
    <slot></slot>
  </div>
</template>

<style scoped>
.rel {
  background: center no-repeat url("/materik-karta-mira-metall-chernyi-fon.jpg");
  position: relative;
  height: 100vh;
  background-size: contain;
  /*width: 100vw;*/
}
.my-size {
  max-width: 3400px;
  height: 100vh;
}
</style>