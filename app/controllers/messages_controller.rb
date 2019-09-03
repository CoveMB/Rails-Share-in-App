class MessagesController < ApplicationController
  def create
    message = Message.new(message_params)
    authorize message
    message.user = current_user
    # send_notification(message)
    if message.save!
      message.chat.users.pluck(:id).each do |chat_users_id|
        ActionCable.server.broadcast(
          "messages_#{chat_users_id}",
          message: message.content,
          chat_id: message.chat.id,
          user_id: message.user.id,
          user_name: message.user.name,
          user_avatar: url_for(message.user.avatar)
        )
      end
    else
      flash[:alert] = "Sorry but we couldn't do this"
      redirect_to user_path(current_user)
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :chat_id)
  end

  def send_notification(message)
    message.chat.new_message = true
    user_to_notify = User.find(params[:message][:other_user])
    user_to_notify.new_message = true
    user_to_notify.save
  end
end
