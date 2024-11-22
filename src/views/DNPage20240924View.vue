<template>
  <div class="page-container">
    <!-- 上區域 -->
    <div class="top-section">
      <!-- 第一行 -->
      <div class="row">
        <p class="title">【改版】超越方舟[過去]</p>
        <div class="buttons">
          <button @click="updateImage('超越的方舟第二季[過去].jpeg')">超越的方舟第二季[過去]</button>
          <button @click="updateImage('角色平衡(PVE).jpeg')">角色平衡(PVE)</button>
          <button @click="updateImage('角色平衡(PVP).jpeg')">角色平衡(PVP)</button>
          <button @click="updateImage('分裂迷宮.jpeg')">分裂迷宮</button>
          <button @click="updateImage('其他更新.jpeg')">其他更新</button>
        </div>
      </div>
      <!-- 第二行 -->
      <div class="row">
        <p class="title">【活動】鴨霸採集</p>
        <div class="buttons">
          <button @click="updateImage('獸人天堂.jpeg')">獸人天堂</button>
          <button @click="updateImage('簽到活動.jpeg')">簽到活動</button>
          <button @click="updateImage('週末登入送.jpeg')">週末登入送</button>
          <button @click="updateImage('採~採起來.jpeg')">採~採起來</button>
          <button @click="updateImage('舉國歡騰任務箱.jpeg')">舉國歡騰任務箱</button>
          <button @click="updateImage('巢穴任務箱.jpeg')">巢穴任務箱</button>
          <button @click="updateImage('公會任務箱.jpeg')">公會任務箱</button>
          <button @click="updateImage('巢穴競速.jpeg')">巢穴競速</button>
          <button @click="updateImage('龍之谷PASS11季.jpeg')">龍之谷PASS11季</button>
        </div>
      </div>
      <!-- 第三行 -->
      <div class="row">
        <p class="title">【商城】全新崩壞刻印</p>
        <div class="buttons">
          <button @click="updateImage('改版禮盒.jpeg')">改版禮盒</button>
          <button @click="updateImage('崩壞的武器刻印.jpeg')">崩壞的武器刻印</button>
          <button @click="updateImage('承載英雄之力的秘寶.jpeg')">承載英雄之力的秘寶</button>
          <button @click="updateImage('限時道具折扣.jpeg')">限時道具折扣</button>
          <button @click="updateImage('大明星時裝&復刻時裝.jpeg')">大明星時裝&復刻時裝</button>
          <button @click="updateImage('寵物PICK UP.jpeg')">寵物PICK UP</button>
          <button @click="updateImage('失敗的發明三件套.jpeg')">失敗的發明三件套</button>
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
      this.currentImage = require(`@/assets/images/20240924/${imageName}`);
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
