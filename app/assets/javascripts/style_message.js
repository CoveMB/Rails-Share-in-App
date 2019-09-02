// function scroll () {
//   var formElements = Array.from(document.querySelectorAll(".messages")).map((formElement) => {
//     if (window.location.href.match(/chats/)){
//       return formElement.parentElement;
//     } else {
//       if (formElement.parentElement.nextElementSibling){
//         console.log(formElement.parentElement.nextElementSibling);
//         return formElement.parentElement.nextElementSibling;
//       } else {
//         console.log(formElement.parentElement);
//         return formElement.parentElement;
//       }
//     }
//   });
//   formElements.forEach((form) => {
//     form.scrollTop = form.scrollHeight;
//   });
// };

function scroll () {
  document.querySelectorAll(".scrollbar-custom").forEach((scrollBox) => {
    scrollBox.scrollTop = scrollBox.scrollHeight;
  });
};

function cancelNotification () {
  document.querySelectorAll(".message-little-box").forEach((messageBox)=> {
    messageBox.addEventListener("click", () => {
      document.getElementById("notification").style.display = "none";
      document.querySelectorAll(".alert").forEach((alert) => {
        alert.style.display = "none";
      });
    });
  });
}

function switchPreviewBox() {
  document.querySelectorAll(".message-little-preview").forEach((preview) => {
    // console.log(preview);
    preview.addEventListener("click", (event) => {
      event.target.parentElement.style.display = "none";
      event.target.parentElement.nextElementSibling.style.display = "block";
      scroll();
    });
  });
}

function closeMessageBox (){
  document.querySelectorAll(".closing-message").forEach((clossingCross) => {
    clossingCross.addEventListener("click", (event) => {
      event.target.parentElement.style.display = "none";
    });
  });
}

function reduceMessageBox (){
  document.querySelectorAll(".reduce-message").forEach((reduceSign) => {
    reduceSign.addEventListener("click", (event) => {
      event.target.parentElement.style.display = "none";
      event.target.parentElement.previousElementSibling.style.display = "block";
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
