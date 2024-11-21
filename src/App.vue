<template>
  <div id="app" class="d-flex">
    <!-- Sidebar -->
    <aside :class="['sidebar', { collapsed: isCollapsed }]" :style="sidebarStyle">
      <button @click="toggleSidebar" class="toggle-btn" :style="buttonStyle">
        {{ isCollapsed ? '☰' : '✖' }}
      </button>
      <div v-if="!isCollapsed" class="menu-header">
        改版日期
      </div>
      <div v-if="!isCollapsed" class="menu">
        <button @click="navigate('DNPage20241118')">2024-11-18</button>
      </div>
    </aside>

    <!-- Main Content -->
    <main class="content" :style="contentStyle">
      <component :is="currentView"></component>
    </main>
  </div>
</template>

<script>
import DNPage20241118View from './views/DNPage20241118View.vue';

export default {
  data() {
    return {
      isCollapsed: false, // 控制側邊欄伸縮
      currentView: 'EmptyView', // 當前顯示的頁面
    };
  },
  computed: {
    // 計算側邊欄樣式
    sidebarStyle() {
      return {
        width: this.isCollapsed ? '3vw' : '15vw', // 動態調整寬度為螢幕寬度的 5% 或 15%
      };
    },
    // 計算主內容區域樣式
    contentStyle() {
      const contentWidth = this.isCollapsed ? '97vw' : '85vw';
      return {
        width: `${contentWidth}vw`, // 設定主內容區域的寬度
      };
    },
    // 計算按鈕樣式
    buttonStyle() {
      return {
        textAlign: this.isCollapsed ? 'center' : 'right', // 當側邊欄縮小時，按鈕居中；未縮小時，按鈕右對齊
        display: 'block', // 保證按鈕是區塊級元素，這樣可以控制其左右對齊
      };
    },
  },
  components: {
    DNPage20241118View,
  },
  methods: {
    toggleSidebar() {
      this.isCollapsed = !this.isCollapsed; // 切換伸縮狀態
    },
    navigate(view) {
      this.currentView = view + 'View'; // 切換頁面
    },
  },
};
</script>

<style>
/* 基本樣式 */
#app {
  display: flex;
  height: 100%;
  width: 98vw;
  overflow: auto;
}

/* 側邊欄樣式 */
.sidebar {
  background-color: #404040;
  color: white;
  display: flex;
  flex-direction: column;
  padding: 1rem;
  transition: width 0.3s ease;

  /* height: 100%; */
  min-height: 95vh;
}

.sidebar .toggle-btn {
  background: none;
  color: white;
  border: none;
  cursor: pointer;
  font-size: 1.5rem;
  margin-bottom: 1rem;
}

.sidebar .menu {
  display: flex;
  flex-direction: column;
  gap: 1rem;
}

.sidebar .menu button {
  font-size: 1.5rem;
}

.sidebar .menu button:hover {
  background-color: #908e8e;
}

.sidebar button:hover {
  text-decoration: underline;
}

.sidebar .menu-header {
  font-weight: bold;
  text-align: center; /* 水平置中 */
  margin-bottom: 1rem; /* 與下方按鈕區域保持間距 */
  color: #ffffff;
  font-size: 1.5rem;
}

/* 主內容區域樣式 */
.content {
  flex-grow: 1;
  padding: 2rem;
  margin-left: 2rem;
  transition: margin-left 0.3s ease;
}
</style>
