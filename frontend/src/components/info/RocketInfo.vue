<script>
import { PaperClipIcon } from '@heroicons/vue/20/solid'
export default{
  name:"RocketInfo",
}
</script>

<template>
    <div class="max-w-4xl h-100 my">
      <div class="mt-6 border-t border-gray-100">
        <dl class="divide-y divide-gray-100">
          <div class="px-4 py-6 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-0">
            <dt class="text-sm font-medium leading-6 text-white">Космодром</dt>
            <dd class="mt-1 text-sm leading-6 text-white sm:col-span-2 sm:mt-0">Margot Foster</dd>
          </div>
          <div class="px-4 py-6 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-0">
            <dt class="text-sm font-medium leading-6 text-white">Ведомство</dt>
            <dd class="mt-1 text-sm leading-6 text-white sm:col-span-2 sm:mt-0">Fugiat ipsum ipsum deserunt culpa aute sint do nostrud anim incididunt cillum culpa consequat. Excepteur qui ipsum aliquip consequat sint. Sit id mollit nulla mollit nostrud in ea officia proident. Irure nostrud pariatur mollit ad adipisicing reprehenderit deserunt qui eu.</dd>
          </div>
          <div class="px-4 py-6 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-0">
            <dt class="text-sm font-medium leading-6 text-white">Площадь,кв.км</dt>
            <dd class="mt-1 text-sm leading-6 text-white sm:col-span-2 sm:mt-0">margotfoster@example.com</dd>
          </div>
          <div class="px-4 py-6 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-0">
            <dt class="text-sm font-medium leading-6 text-white">Ракеты космического назначения</dt>
            <dd class="mt-1 text-sm leading-6 text-white sm:col-span-2 sm:mt-0">$120,000</dd>
          </div>
        </dl>
      </div>
    </div>
</template>

<style scoped>
.my{
  position: absolute;
  left: 30%;
  top:30%;
}
</style>