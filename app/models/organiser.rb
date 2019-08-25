class Organiser < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_one_attached :avatar

  # belongs_to :user
  belongs_to :organiser_type

  has_many :events, dependent: :destroy
end
