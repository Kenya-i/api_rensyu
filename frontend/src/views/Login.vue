<template>
  <div class="login">
    <button @click="getUser">ボタン</button>
    <div v-for="user in users" :key="user.id">
      {{user.name}}
    </div>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  data() {
    return {
      users: []
    }
  },
  methods: {
    getUser() {
      axios.get("http://localhost:3000/teacher/users").then((response) => {
        for(let i = 0; i < response.data.length; i++) {
          this.users.push({ id: [i], name: response.data[i].name})
        }
      })
    }
  }
}
</script>

<style>

</style>
