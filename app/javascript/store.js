import { defineStore } from "pinia";

export const useLogStore = defineStore("logStore", {
  state: () => ({
    signedIn: false,
    log: localStorage.signedIn ? true : false 

  }),
  getters: {
  	thislog(){
  		return this.log
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
    logined() {
      this.log = true
    },
    logouted() {
      this.log = false
    }
  }  
 
})
 