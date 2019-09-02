class Interest < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :interest_category
  has_many :user_interests
  has_many :users, through: :user_interests
  has_many :event_interests
  has_many :events, through: :event_interests
end
