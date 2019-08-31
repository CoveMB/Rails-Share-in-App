function scroll () {
  var objDiv = document.getElementById("messages").parentElement;
  objDiv.scrollTop = objDiv.scrollHeight;
};

function boldName (){
  var user = window.location.href.split("=").pop();

  document.querySelectorAll(".user-row").forEach(function (userRow) {
    if (userRow.firstElementChild.lastElementChild.id.split("-")[1] == user) {
      userRow.firstElementChild.lastElementChild.style.fontWeight = "bold";
    }
  });
}
