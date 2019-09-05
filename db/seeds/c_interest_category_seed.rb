icons = ["music", "art", "community", "food", "health", "sport", "science", "fashion", "business"]

["Music & Dance", "Exhibition & Visual Art", "Community & Culture", "Food & Drink", "Health & Wellness", "Sports & Fitness", "Science & Technology", "Fashion & Beauty", "Business & Professional"].each_with_index do |interest_category, i|
  category = InterestCategory.find_or_create_by!(name: interest_category)
  category.icon = icons[i]
  category.save!
end

p "Interest Categories created!"
