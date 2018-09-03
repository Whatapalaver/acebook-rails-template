$(".fa-search").click(function() {
  if ($("#header-search-input").hasClass("active")) {
    $("#header-search-input").removeClass("active");
    $("#header-search-input input").val("");
    $("#header-search-input input").blur();
  } else {
    $("#header-search-input").addClass("active");
    setTimeout(function() {
      $("#header-search-input input").focus();
    }, 200)
  }
})

$("#searchInput").on('keyup blur', function() {
  if ($(this).val().length > 0) {
    $("#quickResultsCont").show();
  } else {
    $("#quickResultsCont").hide();
  }
});
