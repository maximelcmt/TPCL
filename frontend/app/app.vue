<template>
  <div style="padding: 2rem; font-family: system-ui;">
    <NuxtRouteAnnouncer />
    <h1>Test de connexion Laravel ↔ Nuxt</h1>
    
    <div style="margin: 2rem 0;">
      <button 
        @click="testApi" 
        :disabled="loading"
        style="padding: 0.75rem 1.5rem; background: #007bff; color: white; border: none; border-radius: 4px; cursor: pointer; font-size: 1rem;"
      >
        {{ loading ? 'Test en cours...' : 'Tester l\'API Laravel' }}
      </button>
    </div>

    <div v-if="error" style="padding: 1rem; background: #f8d7da; color: #721c24; border-radius: 4px; margin: 1rem 0;">
      <strong>Erreur:</strong> {{ error }}
    </div>

    <div v-if="response" style="padding: 1rem; background: #d4edda; color: #155724; border-radius: 4px; margin: 1rem 0;">
      <strong>Réponse de l'API:</strong>
      <pre style="margin-top: 0.5rem; background: white; padding: 1rem; border-radius: 4px; overflow-x: auto;">{{ JSON.stringify(response, null, 2) }}</pre>
    </div>
  </div>
</template>

<script setup lang="ts">
import { useApi } from '../composables/useApi'

const { get } = useApi()
const response = ref(null)
const error = ref(null)
const loading = ref(false)

const testApi = async () => {
  loading.value = true
  error.value = null
  response.value = null

  try {
    response.value = await get('/health')
  } catch (err: any) {
    error.value = err.message || 'Erreur de connexion à l\'API'
    console.error('Erreur:', err)
  } finally {
    loading.value = false
  }
}
</script>
