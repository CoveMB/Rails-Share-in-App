function scroll () {
  document.querySelectorAll(".scrollbar-custom").forEach( function (scrollBox) {
    if (Array.from(scrollBox.classList).includes("chat-container") || Array.from(scrollBox.classList).includes("message-little-box")){
      scrollBox.scrollTop = scrollBox.scrollHeight;
    }
  });
};

function cancelNotification () {
  document.querySelectorAll(".message-little-box").forEach( function (messageBox) {
    messageBox.addEventListener("click", function () {
      document.getElementById("notification").style.display = "none";
      document.querySelectorAll(".alert").forEach(function (alert)  {
        alert.style.display = "none";
      });
    });
  });
}

function switchPreviewBox() {
  document.querySelectorAll(".message-little-preview").forEach(function (preview)  {
    preview.addEventListener("click", function (event)  {
      if (event.target.parentElement.tagName === "H3"){
        event.target.parentElement.parentElement.style.display = "none";
        event.target.parentElement.parentElement.nextElementSibling.style.display = "block";
        scroll();
      } else {
        event.target.parentElement.style.display = "none";
        event.target.parentElement.nextElementSibling.style.display = "flex";
        scroll();
      }
    });
  });
}

function closeMessageBox (){
  document.querySelectorAll(".closing-message").forEach(function (clossingCross)  {
    clossingCross.addEventListener("click", function (event)  {
      event.target.parentElement.parentElement.style.display = "none";
    });
  });
}

function reduceMessageBox (){
  document.querySelectorAll(".reduce-message").forEach(function (reduceSign)  {
    reduceSign.addEventListener("click", function (event)  {
      event.target.parentElement.parentElement.previousElementSibling.firstElementChild.firstElementChild.style.display = "none";
      event.target.parentElement.parentElement.style.display = "none";
      event.target.parentElement.parentElement.previousElementSibling.style.display = "block";
    });
  });
}

function boldName (){
  var user = window.location.href.split("=").pop();
  document.querySelectorAll(".user-row").forEach(function (userRow) {
    if (userRow.firstElementChild.lastElementChild.id.split("-")[1] == user) {
      userRow.firstElementChild.lastElementChild.style.fontWeight = "bold";
    }
  });
}
