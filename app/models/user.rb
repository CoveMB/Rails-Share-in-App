class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  # Activestorege config
  has_one_attached :avatar
  has_one_attached :image

  # Model config
  has_many :user_interests, dependent: :destroy
  has_many :interests, through: :user_interests

  has_many :user_events, dependent: :destroy
  has_many :events, through: :user_events

  has_many :user_organisers, dependent: :destroy
  has_many :organisers, through: :user_organisers

  # has_one :organiser

  # Devise config
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Geocoding config
  # geocoded_by :address
  # after_validation :geocode, if: :will_save_change_to_address?

  # Messaging config
  has_many :messages
  has_many :subscriptions
  has_many :chats, through: :subscriptions


  def existing_chats_users
    existing_chat_users = []
    self.chats.each do |chat|
    existing_chat_users.concat(chat.subscriptions.where.not(user_id: self.id).map {|subscription| subscription.user})
    end
    existing_chat_users.uniq
  end
end
