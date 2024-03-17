import './assets/main.css'

import { createApp } from 'vue'
import App from './App.vue'
import './index.css'
import router from "@/router/Router.js";
import store from "@/store/store.js";
createApp(App).use(router).use(store).mount('#app')
