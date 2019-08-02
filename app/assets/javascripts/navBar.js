$(document).ready(function() {

  console.log("page reloaded")
  $(location).attr('href')

  var pathname = window.location.pathname

  if (pathname = "/login") {
  $("#custom-login-button").css("display", "none")
  $("#signup").css("display", "inline")

}

if (pathname = "/signup") {
$("#signup").css("display", "none")
$("#custom-login-button").css("display", "inline")

}


  console.log(pathname);
});
