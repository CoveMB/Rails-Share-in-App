function messageForm(){
  var shiftDown = false;

  var chatForms = document.querySelectorAll("#new_message");
  Array.from(chatForms).forEach((form) =>{
      form.addEventListener("keyup", (event) => {
        // event.preventDefault();
        const input = form.children[2];
        if (event.keyCode == 13) {
          if ( document.activeElement === input && !shiftDown){
            event.preventDefault();
            form.submit();
            setTimeout(() => {
              form.reset();
            }, 1);
          }
        }
      });
    });

$(document).keydown(function (e) {
      if(e.keyCode == 16) shiftDown = true;
  });
$(document).keyup(function (e) {
      if(e.keyCode == 16) shiftDown = false;
  });
}
