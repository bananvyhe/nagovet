import { defineStore } from "pinia";

export const useLogStore = defineStore("logStore", {
  state: () => ({

    log: localStorage.signedIn ? true : false 

  }),
  getters: {
  	thislog(){
  		return this.log
  	}
  },
  actions: {
    logined() {
      this.log = true
    },
    logouted() {
      this.log = false
    }
  }  
 
})
 