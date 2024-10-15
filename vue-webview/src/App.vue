<script setup lang="ts">
import { ref } from 'vue';

const data = ref("");
const printSnackbar = () => {
  // FlutterChannel을 통해 Flutter로 메시지 전송
  if (window.WebviewChannel) {
    window.WebviewChannel.postMessage(`print snack bar: ${data.value}`);
  }
};

const goToDialog = (value: string) => {
  if (window.WebviewChannel) {
    window.WebviewChannel.postMessage(value);
  }
}
</script>

<template>
  <h2>Test Vue Project</h2>
  <div>
    <input v-model="data" type="text" />
    <button @click="printSnackbar">Click Button</button>
  </div>
  <button @click="goToDialog('dialog1')">Go To Dialog 1</button>
  <button @click="goToDialog('dialog2')">Go To Dialog 2</button>
</template>

<style scoped></style>
