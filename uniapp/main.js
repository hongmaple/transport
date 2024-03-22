import Vue from 'vue'
import App from './App'
import store from './store' // store
import plugins from './plugins' // plugins
import './permission' // permission
import cuCustom from './colorui/components/cu-custom.vue'
Vue.use(plugins)
Vue.component('cu-custom',cuCustom)

Vue.config.productionTip = false
Vue.prototype.$store = store

App.mpType = 'app'

const app = new Vue({
  ...App
})

app.$mount()
