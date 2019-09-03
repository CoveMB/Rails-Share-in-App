function createMessageChannel() {
  AUTH_TOKEN = $('meta[name=csrf-token]').attr('content');
  App.messages = App.cable.subscriptions.create({
        channel: 'MessagesChannel', chat_id: parseInt($("#message_chat_id").val())
        },
        {
        received: function(data) {
          // console.log(data.message);
          if (window.location.href.match(/chats/)){
            $("#messages-"+ data.chat_id).removeClass('hidden');
            this.renderMessageOnChat(data);
          } else {
            if (document.getElementById("messages-preview-" + data.chat_id) === null){
              this.buildChatBox(data);
              this.addStyling();
            }
            else if (document.getElementById("messages-preview-" + data.chat_id).style.display === "none" && document.getElementById("message-box-" + data.chat_id).style.display === "none"){
              document.getElementById("messages-preview-" + data.chat_id).style.display = "block";
            } else if (document.getElementById("messages-preview-" + data.chat_id).style.display === "block"){
              document.getElementById("messages-preview-" + data.chat_id).firstElementChild.firstElementChild.style.display = "block";
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
        },
        buildChatBox: function(data){
          // Insert preview and message box
          document.querySelector(".message-little-bar").insertAdjacentHTML("beforeend",
          '<div class="message-little-preview" id="messages-preview-'+ data.chat_id +'" style="display: block;"><h3>'+ data.user_name +'<span id="message-preview-notification" class="badge badge-light" style="display: block;">New</span></h3></div>' + '<div class="message-little-box scrollbar-custom" id="message-box-'+ data.chat_id +'" style="display: none;"><div class="messages-actions"><span class="reduce-message">-</span><span class="closing-message">X</span></div><div class="messages" id="messages-'+ data.chat_id +'"></div><form class="new_message" id="new_message" action="/messages" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="authenticity_token" value="' + AUTH_TOKEN + '" /><textarea data-textarea="message" class="form-control" name="message[content]" id="message_content"></textarea><input value="'+ data.chat_id +'" type="hidden" name="message[chat_id]" id="message_chat_id" /><input value="'+ data.user_id +'" type="hidden" name="message[other_user]" id="message_other_user" /></form></div>'
         );
       },
       addStyling: function(){
         cancelNotification();
         switchPreviewBox();
         closeMessageBox();
         reduceMessageBox();
         messageForm();
       }
      });
return App.messages;
}
