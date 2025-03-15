<template>
  <q-layout view="lHh Lpr lFf">
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
