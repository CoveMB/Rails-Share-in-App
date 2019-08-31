function scroll () {
  var objDiv = document.getElementById("messages").parentElement;
  objDiv.scrollTop = objDiv.scrollHeight;
};

var user = window.location.href.split("=").pop();

document.querySelectorAll(".user-row").forEach((userRow) => {
  if (userRow.firstElementChild.lastElementChild.id.split("-")[1] == user) {
    userRow.firstElementChild.lastElementChild.style.fontWeight = "bold";
  }
});
