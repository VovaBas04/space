<script >
export default {
  name: "SupportInfo",
  props: ["title", "description"],
};
</script>

<template>
  <div class="supportInfo">
    <h3 class="text-2xl underline font-bold">{{ title }}</h3>
    <p class="text-2xl">{{ description }}</p>
    <p class="text-2xl"><slot></slot></p>
  </div>
</template>

<style scoped>
.supportInfo {
  margin: 15px 0 0 0;
}
</style>