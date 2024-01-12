import { createStore } from 'vuex'

const store = createStore({
    state:{
        description:Object
    },
    mutations:{
      setDescription(state,data){
          state.description = data
      }
    }
});

export default store;