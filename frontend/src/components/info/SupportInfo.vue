<script >
export default {
  name: "SupportInfo",
  props: ["title", "description"],
};
</script>

<template>
  <div class="supportInfo text-2xl">
    <h3 class="underline font-bold">{{ title }}</h3>
    <div v-html="description"></div>
    <p><slot></slot></p>
  </div>
</template>

<style scoped>
.supportInfo {
  margin: 30px 0 0 0;
}
</style>