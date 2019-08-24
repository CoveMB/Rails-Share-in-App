class Organiser < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :user
  belongs_to :organiser_type

  has_many :events, dependent: :destroy
end
