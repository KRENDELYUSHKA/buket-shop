$(function () {
  $(".add-to-cart").on("click", function (e) {
    e.preventDefault();
    let id = $(this).data("id");

    $.ajax({
      url: "cart.php",
      type: "GET",
      data: { cart: "add", id: id },
      dataType: "json",
      success: function (res) {
        if (res.code == "ok") {
          window.location.reload();
        } else {
          alert(res.answer);
        }
      },
      error: function () {
        alert("Error");
      },
    });
  });

  $("#clear-cart").on("click", function (e) {
    e.preventDefault();

    $.ajax({
      url: "cart.php",
      type: "GET",
      data: { cart: "clear" },
      success: function (res) {
        if (res.code == "ok") {
          window.location.reload();
        } else {
          window.location.reload();
        }
      },
      error: function () {
        alert("Error");
      },
    });
  });
});
