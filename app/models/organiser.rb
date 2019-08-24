class Organiser < ApplicationRecord
  extend FriendlyID
  friendly_id :name, use: :slugged

  belongs_to :user
  belongs_to :organiser_type
end
