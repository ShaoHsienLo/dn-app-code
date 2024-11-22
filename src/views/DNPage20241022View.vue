<template>
  <div class="page-container">
    <!-- 上區域 -->
    <div class="top-section">
      <!-- 第一行 -->
      <div class="row">
        <p class="title">【改版】瑪奇娜外傳 - 維斯蒂亞</p>
        <div class="buttons">
          <button @click="updateImage('瑪奇娜外傳.jpeg')">瑪奇娜外傳</button>
          <button @click="updateImage('摯友星.jpeg')">摯友星</button>
          <button @click="updateImage('永恆的托利斯曼.jpeg')">永恆的托利斯曼</button>
          <button @click="updateImage('次元裂縫.jpeg')">次元裂縫</button>
          <button @click="updateImage('便利性優化.jpeg')">便利性優化</button>
          <button @click="updateImage('分裂迷宮.jpeg')">分裂迷宮</button>
          <button @click="updateImage('時空颶風.jpeg')">時空颶風</button>
          <button @click="updateImage('其他更新.jpeg')">其他更新</button>
        </div>
      </div>
      <!-- 第二行 -->
      <div class="row">
        <p class="title">【活動】編年史讓你輕鬆變強</p>
        <div class="buttons">
          <button @click="updateImage('維斯蒂亞成長任務箱.jpeg')">維斯蒂亞成長任務箱</button>
          <button @click="updateImage('編年史.jpeg')">編年史</button>
          <button @click="updateImage('週末登入送.jpeg')">週末登入送</button>
          <button @click="updateImage('燃燒火把換得引導.jpeg')">燃燒火把換得引導</button>
          <button @click="updateImage('火把任務箱.jpeg')">火把任務箱</button>
          <button @click="updateImage('強者的養成任務箱.jpeg')">強者的養成任務箱</button>
          <button @click="updateImage('大富翁大戰.jpeg')">大富翁大戰</button>
          <button @click="updateImage('10月簽到活動.jpeg')">10月簽到活動</button>
          <button @click="updateImage('龍之谷PASS S12.jpeg')">龍之谷PASS S12</button>
          <button @click="updateImage('萬聖節繪本收藏活動.jpeg')">萬聖節繪本收藏活動</button>
        </div>
      </div>
      <!-- 第三行 -->
      <div class="row">
        <p class="title">【商城】改版禮盒</p>
        <div class="buttons">
          <button @click="updateImage('改版禮盒.jpeg')">改版禮盒</button>
          <button @click="updateImage('全新商品.jpeg')">全新商品</button>
          <button @click="updateImage('熊熊軟糖&復刻時裝.jpeg')">熊熊軟糖&復刻時裝</button>
          <button @click="updateImage('全新髮型.jpeg')">全新髮型</button>
          <button @click="updateImage('時間的流逝三件套.jpeg')">時間的流逝三件套</button>
          <button @click="updateImage('寵物PICK UP.jpeg')">寵物PICK UP</button>
        </div>
      </div>

    </div>

    <!-- 下區域 -->
    <div class="bottom-section">
      <img v-if="currentImage" :src="`${currentImage}`" :alt="currentImage" />
      <p v-else>請點擊上面按鈕</p>
    </div>

    <!-- 懸浮按鈕 -->
    <button class="scroll-to-top" @click="scrollToTop">
      <img src="@/assets/icons/arrow-up-solid.svg" alt="返回頂部" />
    </button>

  </div>
</template>

<script>
export default {
  data() {
    return {
      currentImage: null, // 當前顯示的圖片檔名
    };
  },
  methods: {
    updateImage(imageName) {
      this.currentImage = require(`@/assets/images/20241022/${imageName}`);
    },
    scrollToTop() {
      window.scrollTo({ top: 0, behavior: 'smooth' }); // 平滑滾動至頂部
    },
    openInNewTab(url) {
      window.open(url, '_blank');
    },
  },
};
</script>

<style scoped>
/* 整體樣式 */
.page-container {
  display: flex;
  flex-direction: column;
  height: 100%;
  gap: 1rem;
}

/* 上區域樣式 */
.top-section {
  flex: 1;
  /* 占據更多空間 */
  display: flex;
  flex-direction: column;
  gap: 1rem;
}

.row {
  display: flex;
  flex-direction: column;
  gap: 1rem;
}

.title {
  font-weight: bold;
  margin: 0;
  color: #333;
}

.buttons {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
}

.buttons button {
  background-color: #ffdd00;
  color: black;
  border: 1px solid black;
  padding: 0.5rem 1rem;
  border-radius: 4px;
  cursor: pointer;
  font-weight: bold;
  font-family: Arial, Helvetica, sans-serif;
}

.buttons button:hover {
  background-color: #cd7318;
}


/* 下區域樣式 */
.bottom-section {
  flex: 3;
  /* 占據較少空間 */
  display: flex;
  justify-content: center;
  align-items: center;
  background-color: #faf9f8;
  border: 1px solid #ddd;
  border-radius: 4px;
  text-align: center;
  padding: 1rem;
}

.bottom-section img {
  max-width: 100%;
  max-height: 100%;
  object-fit: contain;
}

.bottom-section p {
  font-size: 2rem;
  font-weight: bold;
}

.scroll-to-top {
  position: fixed;
  bottom: 20px;
  right: 20px;
  width: 50px;
  height: 50px;
  background-color: #9faebd;
  color: white;
  border: none;
  border-radius: 50%;
  display: flex;
  justify-content: center;
  align-items: center;
  cursor: pointer;
  box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.2);
  padding: 10px;
}

.scroll-to-top:hover {
  background-color: #333638;
}
</style>
