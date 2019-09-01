function createMessageChannel() {
  App.messages = App.cable.subscriptions.create({
        channel: 'MessagesChannel', chat_id: parseInt($("#message_chat_id").val())
        },
        {
        received: function(data) {
          console.log(data.message);
          if (window.location.href.match(/chats/)){
            $("#messages-"+ data.chat_id).removeClass('hidden');
            // document.getElementById("user-" + data.user_id).style.fontWeight = "bold";
            this.renderMessageOnChat(data);
          } else {
            document.getElementById("message-box-" + data.chat_id).style.display = "block";
            this.renderMessageOnChat(data);
          }
        },
        renderMessageOnChat: function(data) {
          var user_status = (window.username == data.user_name) ? "current" : "other" ;
          setTimeout(function() { var objDiv = document.getElementById("messages-"+ data.chat_id).parentElement;
          objDiv.scrollTop = objDiv.scrollHeight;}, 1);

          if (user_status == "other"){
            document.getElementById("notification-area").insertAdjacentHTML("beforeend", '<span class="badge badge-light">New</span>');
            document.querySelector("body").insertAdjacentHTML("beforeend", '<div class="alert alert-info alert-dismissible fade show m-1" role="alert">' + data.user_name + ' sent you new a message <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button></div>');
          };
          document.getElementById('messages-' + data.chat_id).insertAdjacentHTML("beforeend", '<div class="' + user_status + '-user-custom-row animated fadeIn delay-6"><a href="/users/' + data.user_id + '"><img class="avatar" src="' + data.user_avatar + '"></a><p class="' + user_status + '-user-message">' + data.message + '</p><p class="time-indicator-message">just now</p></div>');
        },
        renderMessageElseWhere: function(data) {
          var user_status = (window.username == data.user_name) ? "current" : "other" ;
        }
      });
return App.messages;
}
