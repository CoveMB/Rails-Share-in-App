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
          console.log(data.user_status);
    return '<div class="' + data.user_status + '-user-custom-row"><a href="/users/' + data.user_id + '"><img class="avatar" src="' + data.user_avatar + '"></a><p class="' + data.user_status + '-user-message">' + data.message + '</p><p class="time-indicator-message">just now</p></div>';
  },
      });
return App.messages;
}
