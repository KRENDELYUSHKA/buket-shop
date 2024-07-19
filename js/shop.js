const openPopUpShop = document.getElementById("open_pop_up_shop");
const closePopUpShop = document.getElementById("pop_up_shop_close");
const popUpShop = document.getElementById("pop_up_shop");

openPopUpShop.addEventListener("click", function (e) {
  e.preventDefault();
  popUpShop.classList.add("active");
});
closePopUpShop.addEventListener("click", () => {
  popUpShop.classList.remove("active");
});
