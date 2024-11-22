<template>
  <div class="page-container">
    <!-- 上區域 -->
    <div class="top-section">
      <!-- 第一行 -->
      <div class="row">
        <p class="title">【活動】公會團結一心</p>
        <div class="buttons">
          <button @click="updateImage('清涼登入送.jpeg')">清涼登入送</button>
          <div class="buttons">
            <button @click="openInNewTab('https://dragonnest-event.beanfun.com/EveningLight/Index')">
              夕光修練場第七屆
              <img src="@/assets/icons/link-solid.svg" alt="連結" class="icon" />
            </button>
          </div>
          <button @click="updateImage('甜甜的香瓜活動.jpeg')">甜甜的香瓜活動</button>
          <button @click="updateImage('夕光任務箱.jpeg')">夕光任務箱</button>
          <button @click="updateImage('公會團結一心.jpeg')">公會團結一心</button>
        </div>
      </div>
      <!-- 第二行 -->
      <div class="row">
        <p class="title">【活動】骨龍繪本活動</p>
        <div class="buttons">
          <button @click="updateImage('骨龍繪本活動.jpeg')">骨龍繪本活動</button>
          <button @click="updateImage('傳奇轉換時裝.jpeg')">傳奇轉換時裝</button>
          <button @click="updateImage('清爽的海釣大賽.jpeg')">清爽的海釣大賽</button>
          <button @click="updateImage('龍谷PASS第10季.jpeg')">龍谷PASS第10季</button>
          <button @click="updateImage('更多版本更新.jpeg')">更多版本更新</button>
          <button @click="updateImage('【Discord】綁定活動.jpeg')">【Discord】綁定活動</button>
        </div>
      </div>
      <!-- 第三行 -->
      <div class="row">
        <p class="title">【商品】夕光每週禮盒、天使與惡魔三件套</p>
        <div class="buttons">
          <button @click="updateImage('天使與惡魔三件套.jpeg')">天使與惡魔三件套</button>
          <button @click="updateImage('亞里斯多德時裝.jpeg')">亞里斯多德時裝</button>
          <button @click="updateImage('夕光修練禮盒.jpeg')">夕光修練禮盒</button>
        </div>
      </div>

      <div class="row">
        <p class="title">【跳至改版首頁】</p>
        <div class="buttons">
          <button
            @click="openInNewTab('https://dragonnest-gama-event.beanfun.com/index?Url=B01368306DBAE7BCD5273B2AD8DFBB30.2145')">
            改版首頁
            <img src="@/assets/icons/link-solid.svg" alt="連結" class="icon" />
          </button>
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
      this.currentImage = require(`@/assets/images/20240820/${imageName}`);
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
