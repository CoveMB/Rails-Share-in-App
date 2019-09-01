class MessagesChannel < ApplicationCable::Channel
  def subscribed
    stream_from "messages_#{params[:chat_id]}"
    current_user.chats.pluck(:id).each do |chat|
      stream_from "messages_#{chat}"
      p "*******************************"
      p "Subscribed to chat: #{chat}"
    end
  end

  def start_listening
    current_user.chats.pluck(:id).each do |chat|
      stream_from "messages_#{chat}"
    end
  end
end
