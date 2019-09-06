class UserOrganiser < ApplicationRecord
  belongs_to :user
  belongs_to :organiser
end
