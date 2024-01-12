import { createRouter, createWebHashHistory } from 'vue-router'
import Map from "@/views/Map.vue";
import FullInfo from "@/views/FullInfo.vue";
const routes = [
    { path: '/', name: 'Map', component: Map },
    {path: '/:id',name: 'FullInfo',component: FullInfo}
]
const router = createRouter({ history: createWebHashHistory(), routes
})
export default router