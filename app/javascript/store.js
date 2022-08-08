import { defineStore } from "pinia";

export const useLogStore = defineStore("logStore", {
  state: () => ({
    ctsrf: null, 
    signedIn: false,
    log: localStorage.signedIn ? true : false 

  }),
  getters: {
    thiscsrf(){
      return this.ctsrf
    },   
    thissignedIn(){
      return this.signedIn
    },

  },
  actions: {
    setCurrentUser (currentUser, csrf) {
      this.currentUser = currentUser
      this.signedIn = true
      this.ctsrf = csrf
    },
    unsetCurrentUser () {
      this.currentUser = {}
      this.signedIn = false
      this.ctsrf = null
    },
    refresh (csrf) {
      this.signedIn = true
      this.ctsrf = csrf
    },    
    logined() {
      this.log = true
    },
    logouted() {
      this.log = false
    }
  }, 
  persist: true,
})
 