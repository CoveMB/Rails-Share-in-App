class MessagesController < ApplicationController
  def create
    message = Message.new(message_params)
    message.user = current_user
    send_notification
    if message.save!
      ActionCable.server.broadcast(
        "messages_#{message_params[:chat_id]}",
        message: message.content,
        user_id: message.user.id,
        user_status: message.user == current_user ? "current" : "other",
        user_avatar: url_for(message.user.avatar)
      )
    else
      redirect_to chats_path
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :chat_id)
  end

  def send_notification
    user_to_notify = User.find(params[:message][:other_user])
    user_to_notify.new_message = true
    user_to_notify.save
  end
end
