class AddNewMessageToChats < ActiveRecord::Migration[5.2]
  def change
    add_column :chats, :new_message, :boolean, default: false
  end
end
