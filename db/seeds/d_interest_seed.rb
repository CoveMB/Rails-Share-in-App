def create_interests(interests, interest_category)
  interests.each do |interest|
    Interest.create!(
      name: interest,
      interest_category: InterestCategory.find_by_name(interest_category)
    )
  end
end

create_interests(["Performance", "Concert", "Festival", "Party"], "Music & Dance")

create_interests(["Galery Exhibit", "Museum Exhibition", "Photography", "Painting", "Movie"], "Exhibition & Visual Art")

create_interests(["Neighborhood Visit", "Neighborhood Meetup", "Associations Activities"], "Community & Culture")

create_interests(["Street Food", "Wine", "Food Festival", "Food Workshop"], "Food & Drink")

create_interests(["Yoga", "Meditation", "Wellness Meetup"], "Health & Wellness")

create_interests(["Soccer", "Hockey", "Skating", "Ice Skating", "Basseball", "Runing"], "Sports & Fitness")

create_interests(["Hackaton", "Tech Workshop", "Tech Meetup"], "Science & Technology")

create_interests(["Fashion Show", "Fashion Workshop"], "Fashion & Beauty")

create_interests(["Networking", "Professional Meetup"], "Business & Professional")

p "Interests created!"
