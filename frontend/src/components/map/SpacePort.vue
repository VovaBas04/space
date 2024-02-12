<script >
export default {
  name: "SpacePort",
  props: ["id", "x", "y", "titlePort", "countryImage"],
  data: () => ({
    width: 0,
  }),
  computed: {
    path: function () {
      return process.env.VUE_APP_BACK_URL + `/storage/${this.countryImage}`;
    },
  },
};
</script>

<template>
  <div>
    <!--  <div :style="{left:x+'%',top:y+'%'}" class="coordinate">-->
    <span :style="{ left: x + 'px', top: y + 'px' }" class="absolute"></span>
    <div :style="{ left: x + 'px', top: y + 'px' }" class="coordinate">
      <div
        class="max-w-sm p-6 bg-black-500 border border-black rounded-lg shadow dark:bg-gray-800 dark:border-gray-700"
      >
        <img :src="path" alt="Не найдено" class="max-h-10 mt-2" />
        <a href="#">
          <h5 class="mb-2 text-2xl tracking-tight text-white dark:text-white">
            {{ titlePort }}
          </h5>
        </a>
        <p class="mb-3 font-normal text-white dark:text-gray-400">
          Здесь будут координаты
        </p>
        <router-link
          :to="{ name: 'FullInfo', params: { id: id } }"
          class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
        >
          Подробная информация
          <svg
            class="rtl:rotate-180 w-3.5 h-3.5 ms-2"
            aria-hidden="true"
            xmlns="http://www.w3.org/2000/svg"
            fill="none"
            viewBox="0 0 14 10"
          >
            <path
              stroke="currentColor"
              stroke-linecap="round"
              stroke-linejoin="round"
              stroke-width="2"
              d="M1 5h12m0 0L9 1m4 4L9 9"
            />
          </svg>
        </router-link>
      </div>
    </div>
  </div>
</template>

<style scoped>
span {
  display: block;
  position: absolute;
  margin: 0px;
  width: 10px;
  height: 10px;
  background-color: red;
  border-radius: 10px;
  cursor: pointer;
}

span:hover::before {
  content: "";
  position: absolute;
  top: -10px;
  left: -10px;
  width: 30px;
  height: 30px;
  border-radius: 30px;
  background-color: red;
  animation: animate 1.5s infinite normal ease-out;
}

@keyframes animate {
  from {
    transform: scale(0);
    opacity: 0.5;
  }
  to {
    transform: scale(2);
    opacity: 0;
  }
}
img {
  float: left;
}
.coordinate {
  position: absolute;
  transform: scale(60%);
}
</style>