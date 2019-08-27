["Music & Dance", "Exhibition & Visual Art", "Community & Culture", "Food & Drink", "Health & Wellness", "Sports & Fitness", "Science & Technology", "Fashion & Beauty", "Business & Professional"].each do |interest_category|
  InterestCategory.create!(name: interest_category)
end

p "Interest Categories created!"
