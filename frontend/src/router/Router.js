import { createRouter, createWebHashHistory } from 'vue-router'
import Map from "@/views/Map.vue";
import FullInfo from "@/views/FullInfo.vue";
import Statistics from "@/views/Statistics.vue"
import Rockets from "@/views/Rockets.vue"
import Schemes from "@/views/Schemes.vue"
import RocketInfo from "@/components/info/RocketInfo.vue";
import ImageSometing from "@/components/info/ImageSometing.vue";
const routes = [
    { path: '/', name: 'Map', component: Map },
    { path: '/cosmodrome/:id', name: 'FullInfo', component: FullInfo },
    { path: '/test', name: 'ImageSomething', component: ImageSometing },
    { path: '/schemes/:id', name: 'Schemes', component: Schemes },
    { path: '/rockets/:id', name: 'Rockets', component: Rockets },
    { path: '/statistics/:id', name: 'Statistics', component: Statistics }
]
const router = createRouter({
    history: createWebHashHistory(), routes
})
export default router