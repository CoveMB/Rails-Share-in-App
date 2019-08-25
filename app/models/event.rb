class Event < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_one_attached :image

  has_many :event_interests, dependent: :destroy
  has_many :interests, through: :event_interests
  has_many :interest_categories, through: :interests

  has_many :user_events, dependent: :destroy
  has_many :users, through: :user_events

  belongs_to :event_type
  belongs_to :organiser

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
