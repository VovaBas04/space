<script >
export default {
  name: "Logo",
  props: ["pathFlag"],
};
</script>

<template>
  <img class="logo h-24" :src="pathFlag" alt="logo" />
</template>

<style scoped>
.logo {
  margin: auto 0;
}
@media (max-width: 900px) {
  .logo {
    margin: auto;
  }
}
</style>