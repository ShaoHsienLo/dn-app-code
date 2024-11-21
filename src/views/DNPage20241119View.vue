<template>
  <div class="page-container">
    <!-- 上區域 -->
    <div class="top-section">
      <!-- 第一行 -->
      <div class="row">
        <p class="title">【改版】宇宙偶像哈洛麗!</p>
        <div class="buttons">
          <button @click="updateImage('宇宙偶像哈洛麗.jpeg')">宇宙偶像哈洛麗!</button>
          <button @click="updateImage('方舟之力擴張.jpeg')">方舟之力擴張</button>
          <button @click="updateImage('分裂迷宮.jpeg')">分裂迷宮</button>
          <button @click="updateImage('艾提亞納巢穴.jpeg')">艾提亞納巢穴</button>
          <button @click="updateImage('11月簽到活動.jpeg')">11月簽到活動</button>
          <button @click="updateImage('便利性優化.jpeg')">便利性優化</button>
        </div>
      </div>
      <!-- 第二行 -->
      <div class="row">
        <p class="title">【活動】屠龍勇士任務箱</p>
        <div class="buttons">
          <button @click="updateImage('橘子周年慶任務箱.jpeg')">橘子周年慶任務箱</button>
          <button @click="updateImage('屠龍勇士任務箱.jpeg')">屠龍勇士任務箱</button>
          <button @click="updateImage('龍谷PASS S13.jpeg')">龍谷PASS S13</button>
          <button @click="updateImage('趁龍病要龍命.jpeg')">趁龍病要龍命</button>
          <button @click="updateImage('周末登入送.jpeg')">周末登入送</button>
        </div>
      </div>
      <!-- 第三行 -->
      <div class="row">
        <p class="title">【商城】11月改版禮盒</p>
        <div class="buttons">
          <button @click="updateImage('你要的改版禮盒.jpeg')">你要的改版禮盒</button>
          <button @click="updateImage('螢光三件套&兔子武器.jpeg')">螢光三件套/兔子武器</button>
          <button @click="updateImage('怪盜時裝&復刻時裝.jpeg')">怪盜時裝/復刻時裝</button>
          <button @click="updateImage('小龐寵物.jpeg')">小龐寵物</button>
        </div>
      </div>

      <div class="row">
        <p class="title">【網頁活動】挖掘大師-進化之路</p>
        <div class="buttons">
          <button @click="openInNewTab('https://dragonnest-event.beanfun.com/Event/E20241119/Index')">挖掘大師-進化之路</button>
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
      this.currentImage = require(`@/assets/images/20241119/${imageName}`);
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
