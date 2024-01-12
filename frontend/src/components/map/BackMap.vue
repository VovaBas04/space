<script>
export default {
  name: "BackMap"
}
</script>

<template>
  <div class="rel">
    <img src="../../../public/materik-karta-mira-metall-chernyi-fon.jpg" width="2500px "
         alt="Картинка не найдена">
    <slot></slot>
  </div>
</template>

<style scoped>
.rel{
  position: relative;
}
</style>