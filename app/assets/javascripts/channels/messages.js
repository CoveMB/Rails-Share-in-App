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
            if (document.getElementById("messages-preview-" + data.chat_id === nul)){
              // create a message box if it does not exist
            }
            if (document.getElementById("messages-preview-" + data.chat_id).style.display === "none" && document.getElementById("message-box-" + data.chat_id).style.display === "none"){
              document.getElementById("messages-preview-" + data.chat_id).style.display = "block";
            }
            this.renderMessageOnChat(data);
          }
        },
        renderMessageOnChat: function(data) {
          var user_status = (window.username == data.user_name) ? "current" : "other" ;
          setTimeout(function() { var objDiv = document.getElementById("messages-"+ data.chat_id).parentElement;
          objDiv.scrollTop = objDiv.scrollHeight;}, 1);

          if (user_status == "other"){
            document.getElementById("notification").style.display = "block";
          };
          document.getElementById('messages-' + data.chat_id).insertAdjacentHTML("beforeend", '<div class="' + user_status + '-user-custom-row animated fadeIn delay-6"><a href="/users/' + data.user_id + '"><img class="avatar" src="' + data.user_avatar + '"></a><p class="' + user_status + '-user-message">' + data.message + '</p><p class="time-indicator-message">just now</p></div>');
        },
        renderMessageElseWhere: function(data) {
          var user_status = (window.username == data.user_name) ? "current" : "other" ;
        }
      });
return App.messages;
}
