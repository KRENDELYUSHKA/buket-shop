let decor = document.getElementById("arrow-decor");
let decorBlock = document.getElementById("arrow-decor-style");
let flowers = document.getElementById("arrow-flowers");
let flowersBlock = document.getElementById("arrow-flowers-style");
let compose = document.getElementById("arrow-compose");
let composeBlock = document.getElementById("arrow-compose-style");
let material = document.getElementById("arrow-material");
let materialBlock = document.getElementById("arrow-material-style");
if (decor) {
  decor.addEventListener("click", function () {
    if (decorBlock.style.display === "none") {
      decorBlock.style.display = "block";
      decor.classList.remove("rotate");
    } else {
      decorBlock.style.display = "none";
      decor.classList.add("rotate");
    }
  });
}
if (flowers) {
  flowers.addEventListener("click", function () {
    if (flowersBlock.style.display === "none") {
      flowersBlock.style.display = "block";
      flowers.classList.remove("rotate");
    } else {
      flowersBlock.style.display = "none";
      flowers.classList.add("rotate");
    }
  });
}
if (compose) {
  compose.addEventListener("click", function () {
    if (composeBlock.style.display === "none") {
      composeBlock.style.display = "block";
      compose.classList.remove("rotate");
    } else {
      composeBlock.style.display = "none";
      compose.classList.add("rotate");
    }
  });
}
if (material) {
  material.addEventListener("click", function () {
    if (materialBlock.style.display === "none") {
      materialBlock.style.display = "block";
      material.classList.remove("rotate");
    } else {
      materialBlock.style.display = "none";
      material.classList.add("rotate");
    }
  });
}
