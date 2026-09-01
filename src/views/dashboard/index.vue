<template>
  <div class="dashboard-container">
    <el-card shadow="never">
      <div slot="header" class="card-header">
        <span>工作台</span>
      </div>
      <div class="welcome">
        <h2>欢迎，{{ name }}</h2>
        <p class="hint">Demo 页面已清空，请按《练手项目执行清单》逐步开发业务模块。</p>
      </div>
    </el-card>
  </div>
</template>

<script>
import { mapGetters } from 'vuex'

export default {
  name: 'Dashboard',
  computed: {
    ...mapGetters([
      'name'
    ])
  }
}
</script>

<style lang="scss" scoped>
.dashboard-container {
  padding: 20px;
}

.card-header {
  font-weight: 600;
}

.welcome {
  h2 {
    margin: 0 0 12px;
    font-size: 22px;
    font-weight: 500;
  }

  .hint {
    margin: 0;
    color: #909399;
    font-size: 14px;
    line-height: 1.6;
  }
}
</style>
