function createMessageChannel() {
  App.messages = App.cable.subscriptions.create({
        channel: 'MessagesChannel', chat_id: parseInt($("#message_chat_id").val())
        },
        {
        received: function(data) {
          $("#messages").removeClass('hidden');
          document.getElementById('messages').insertAdjacentHTML("beforeend", this.renderMessage(data));
        },
        renderMessage: function(data) {
          var user_status = (window.username == data.user_name) ? "current" : "other" ;
          setTimeout(function() { var objDiv = document.getElementById("messages").parentElement;
          objDiv.scrollTop = objDiv.scrollHeight;}, 50);

          if (user_status == "other"){
            document.getElementById("notification-area").insertAdjacentHTML("beforeend", '<span class="badge badge-light">New</span>');
            document.getElementById("user-" + data.user_id).style.fontWeight = "bold";
            document.querySelector("body").insertAdjacentHTML("beforeend", '<div class="alert alert-info alert-dismissible fade show m-1" role="alert">' + data.user_name + ' sent you new a message <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button></div>');
          }
    return '<div class="' + user_status + '-user-custom-row animated fadeIn delay-5"><a href="/users/' + data.user_id + '"><img class="avatar" src="' + data.user_avatar + '"></a><p class="' + user_status + '-user-message">' + data.message + '</p><p class="time-indicator-message">just now</p></div>';
  },
      });
return App.messages;
}
