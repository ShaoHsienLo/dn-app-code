<template>
  <div class="page-container">
    <!-- 上區域 -->
    <div class="top-section">
      <!-- 第一行 -->
      <div class="row">
        <p class="title">【改版】神聖天堂巢穴</p>
        <div class="buttons">
          <button @click="updateImage('神聖天堂巢穴.jpeg')">神聖天堂巢穴</button>
          <button @click="updateImage('次元龍玉.jpeg')">次元龍玉</button>
          <button @click="updateImage('全新主線－章節9、章節24.jpeg')">全新主線－章節9、章節24</button>
          <button @click="updateImage('天下第一勇士大會.jpeg')">天下第一勇士大會</button>
          <button @click="updateImage('聖誕節魯道夫.jpeg')">聖誕節魯道夫</button>
          <button @click="updateImage('分裂迷宮.jpeg')">分裂迷宮</button>
          <button @click="updateImage('12月簽到活動.jpeg')">12月簽到活動</button>
          <button @click="updateImage('便利性跟系統調整.jpeg')">便利性跟系統調整</button>
          <button @click="updateImage('龍谷PASS S14.jpeg')">龍谷PASS S14</button>
          <button @click="updateImage('摯友星改版.jpeg')">摯友星改版</button>
        </div>
      </div>
      <!-- 第二行 -->
      <div class="row">
        <p class="title">【活動】聖誕節抽獎活動</p>
        <div class="buttons">
          <button @click="updateImage('聖誕節抽獎活動.jpeg')">聖誕節抽獎活動</button>
          <button @click="updateImage('征服吧神聖天堂救世主.jpeg')">征服吧! 神聖天堂救世主</button>
          <button @click="updateImage('5周年活動.jpeg')">5周年活動</button>
          <button @click="updateImage('與鴨霸的棒棒餅乾.jpeg')">與鴨霸的棒棒餅乾</button>
          <button @click="updateImage('2025跨年登入送.jpeg')">2025跨年登入送</button>
          <button @click="updateImage('十二強冠軍棒球任務箱.jpeg')">十二強冠軍棒球任務箱</button>
          <button @click="updateImage('聖誕節任務箱.jpeg')">聖誕節任務箱</button>
          <button @click="updateImage('周末登入送.jpeg')">周末登入送</button>
        </div>
      </div>
      <!-- 第三行 -->
      <div class="row">
        <p class="title">【商城】12月改版禮盒</p>
        <div class="buttons">
          <button @click="updateImage('12月改版禮盒.jpeg')">12月改版禮盒</button>
          <button @click="updateImage('崩壞刻印頭盔&上衣擴張.jpeg')">崩壞刻印頭盔&上衣擴張</button>
          <button @click="updateImage('熊熊軟糖三件套跟宇宙星環飾品.jpeg')">熊熊軟糖三件套跟宇宙星環飾品</button>
          <button @click="updateImage('女僕時裝&風情時裝&聖誕時裝.jpeg')">女僕時裝&風情時裝&聖誕時裝</button>
          <button @click="updateImage('寵物－小不點死靈術士.jpeg')">寵物－小不點死靈術士</button>
        </div>
      </div>

      <!-- <div class="row">
        <p class="title">【網頁活動】挖掘大師-進化之路</p>
        <div class="buttons">
          <button @click="openInNewTab('https://dragonnest-event.beanfun.com/Event/E20241119/Index')">
            挖掘大師-進化之路
            <img src="@/assets/icons/link-solid.svg" alt="連結" class="icon" />
          </button>
        </div>
      </div> -->
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
      this.currentImage = require(`@/assets/images/20241217/${imageName}`);
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
  display: inline-flex;
  align-items: center;
}

.buttons button:hover {
  background-color: #cd7318;
}

.buttons button .icon {
  height: 1em;
  width: auto;
  margin-left: 0.3em;
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
