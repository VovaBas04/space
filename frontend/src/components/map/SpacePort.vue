<script >
export default {
  name:"SpacePort",
  props:['id','x','y','titlePort','countryImage'],
  computed:{
  }
}
</script>

<template>
  <div :style="{left:x+'%',top:y+'%'}" class="coordinate">
  <div  class=" max-w-sm p-6 bg-black-500 border border-black rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
    <img src="../../../public/russia.png" alt="Не найдено" class="max-h-10 mt-2"/>
    <a href="#">
      <h5 class="mb-2 text-2xl  tracking-tight text-white dark:text-white">{{titlePort}}</h5>
    </a>
    <p class="mb-3 font-normal text-white dark:text-gray-400">Здесь будут координаты</p>
    <a :href="'/#'+id" class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
      Подробная информация
      <svg class="rtl:rotate-180 w-3.5 h-3.5 ms-2" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 10">
        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M1 5h12m0 0L9 1m4 4L9 9"/>
      </svg>
    </a>
  </div>
  </div>
</template>

<style scoped>
img{
  float:left;
}
.coordinate{
  position: absolute;
  transform: scale(60%);
}
</style>