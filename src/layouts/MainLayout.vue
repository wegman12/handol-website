<template>
  <q-layout class="main-layout" view="lHh Lpr lFf">
    <application-header />
    <q-page-container>
      <router-view />
    </q-page-container>
    <application-footer />
  </q-layout>
</template>

<script setup lang="ts">
import ApplicationHeader from 'components/ApplicationHeader.vue';
import ApplicationFooter from 'components/ApplicationFooter.vue';
</script>

<style lang="scss">
.main-layout {
  background-image: url(assets/bukansan_np_background.jpg);
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}
</style>
