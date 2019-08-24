class Event < ApplicationRecord
  extend FriendlyID
  friendly_id :name, use: :slugged

  belongs_to :event_type
  belongs_to :organiser

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
