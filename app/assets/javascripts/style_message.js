function scroll () {
  var formElements = Array.from(document.querySelectorAll(".messages")).map((formElement) => {
    return formElement.parentElement;
  });
  formElements.forEach((form) => {
    form.scrollTop = form.scrollHeight;
  });
};

function boldName (){
  var user = window.location.href.split("=").pop();
  document.querySelectorAll(".user-row").forEach(function (userRow) {
    if (userRow.firstElementChild.lastElementChild.id.split("-")[1] == user) {
      userRow.firstElementChild.lastElementChild.style.fontWeight = "bold";
    }
  });
}
