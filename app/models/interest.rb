class Interest < ApplicationRecord
  belongs_to :interest_category
  has_many :user_interests
  has_many :users, throught: :user_interests
end
