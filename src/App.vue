<template>
  <div id="app" class="d-flex">
    <!-- Sidebar -->
    <aside :class="['sidebar', { collapsed: isCollapsed }]" :style="sidebarStyle">
      <button @click="toggleSidebar" class="toggle-btn" :style="buttonStyle">
        {{ isCollapsed ? '☰' : '✖' }}
      </button>
      <div v-if="!isCollapsed" class="menu-header">
        常用活動超連結
      </div>
      <div v-if="!isCollapsed" class="menu">
        <div class="quick-links">
          <a class="link-box" href="https://dragonnest-event.beanfun.com/Event/E20241119/Index" target="_blank">
            挖掘<br>大師
            <img src="@/assets/icons/link-solid.svg" alt="連結" class="icon" />
          </a>
          <a class="link-box" href="#"></a>
          <a class="link-box" href="#"></a>
        </div>
      </div>
      <div v-if="!isCollapsed" class="menu-header">
        改版日期
      </div>
      <div v-if="!isCollapsed" class="menu">
        <button @click="navigate('DNPage20241119')">2024-11-19</button>
        <button @click="navigate('DNPage20241022')">2024-10-22</button>
        <button @click="navigate('DNPage20240924')">2024-09-24</button>
        <button @click="navigate('DNPage20240820')">2024-08-20</button>
      </div>
    </aside>

    <!-- Main Content -->
    <main class="content" :style="contentStyle">
      <component :is="currentView"></component>
    </main>
  </div>
</template>

<script>
import DNPage20241119View from './views/DNPage20241119View.vue';
import DNPage20241022View from './views/DNPage20241022View.vue';
import DNPage20240924View from './views/DNPage20240924View.vue';
import DNPage20240820View from './views/DNPage20240820View.vue';

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
    DNPage20241119View,
    DNPage20241022View,
    DNPage20240924View,
    DNPage20240820View,
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
  text-align: center;
  /* 水平置中 */
  margin-block: 1rem;
  /* 與下方按鈕區域保持間距 */
  color: #ffffff;
  font-size: 1.5rem;
}

.quick-links {
  display: flex;
  justify-content: space-between;
  gap: 10px;
  margin-top: 10px;
}

.link-box {
  position: relative; /* 設定相對定位，方便內部元素絕對定位 */
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
  width: 80px; /* 正方形寬度 */
  height: 80px; /* 正方形高度 */
  background-color: white;
  color: black; /* 文字顏色 */
  text-decoration: none; /* 去除超連結的下劃線 */
  font-size: 1.5rem; /* 字體大小 */
  font-weight: bold; /* 字體加粗 */
  overflow: hidden; /* 防止圖像溢出 */
}

.link-box:hover {
  background-color: #908e8e;
}

.link-box .icon {
  position: absolute; /* 絕對定位 */
  width: 80%; /* 設置圖像寬度為父元素的 90% */
  height: 80%; /* 設置圖像高度為父元素的 90% */
  top: 50%; /* 將圖像的頂部定位到父元素高度的中間 */
  left: 50%; /* 將圖像的左邊定位到父元素寬度的中間 */
  transform: translate(-50%, -50%); /* 調整位置，使圖像的中心點與父元素的中心對齊 */
  opacity: 0.1; /* 浮水印效果，設置透明度 */
  z-index: 1; /* 保證浮水印在文字下層 */
}


.link-box:hover .icon {
  opacity: 0.2; /* 滑鼠懸停時增加透明度 */
}

.link-box span {
  position: relative; /* 讓文字位於浮水印之上 */
  z-index: 2; /* 保證文字在浮水印之上 */
}

/* 主內容區域樣式 */
.content {
  flex-grow: 1;
  padding: 2rem;
  margin-left: 2rem;
  transition: margin-left 0.3s ease;
}
</style>
