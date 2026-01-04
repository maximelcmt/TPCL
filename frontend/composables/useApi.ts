export const useApi = () => {
  const config = useRuntimeConfig()
  const apiBase = config.public.apiBase

  const get = async (endpoint: string) => {
    return await $fetch(`${apiBase}${endpoint}`)
  }

  const post = async (endpoint: string, data: any) => {
    return await $fetch(`${apiBase}${endpoint}`, {
      method: 'POST',
      body: data
    })
  }

  const put = async (endpoint: string, data: any) => {
    return await $fetch(`${apiBase}${endpoint}`, {
      method: 'PUT',
      body: data
    })
  }

  const del = async (endpoint: string) => {
    return await $fetch(`${apiBase}${endpoint}`, {
      method: 'DELETE'
    })
  }

  return {
    get,
    post,
    put,
    delete: del
  }
}

