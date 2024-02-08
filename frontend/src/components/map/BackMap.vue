<script>
export default {
  name: "BackMap"
}
</script>

<template>
  <div class="rel">
    <img src="../../../public/materik-karta-mira-metall-chernyi-fon.jpg" class="my-size"
         alt="Картинка не найдена">
    <slot></slot>
  </div>
</template>

<style scoped>
.rel{
  position: relative;
}
.my-size{
  max-width: 3400px;
  height: 1800px;
}
</style>