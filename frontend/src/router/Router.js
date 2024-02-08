import { createRouter, createWebHashHistory } from 'vue-router'
import Map from "@/views/Map.vue";
import FullInfo from "@/views/FullInfo.vue";
import RocketInfo from "@/components/info/RocketInfo.vue";
import ImageSometing from "@/components/info/ImageSometing.vue";
const routes = [
    { path: '/', name: 'Map', component: Map },
    {path: '/:id',name: 'FullInfo',component: FullInfo},
    {path: '/test',name: 'ImageSomething',component: ImageSometing}
]
const router = createRouter({ history: createWebHashHistory(), routes
})
export default router