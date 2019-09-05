def create_interests(interests, interest_category)
  interests.each do |interest|
    Interest.create!(
      name: interest,
      interest_category: InterestCategory.find_by_name(interest_category)
    )
  end
end

create_interests(["Performance", "Concert", "Festival", "Party","Date Music"], "Music & Dance")

create_interests(["Galery Exhibit", "Museum Exhibition", "Photography", "Painting", "Potery", "History", "Multimedia Performence", "Movie", "Creative Meetup", "Kid Activities", "Date Exhibition"], "Exhibition & Visual Art")

create_interests(["Neighborhood Visit", "Neighborhood Meetup", "Associations Activities", "Neighborhood History", "Date Community"], "Community & Culture")

create_interests(["Street Food", "Wine", "Food Festival", "Food Workshop", "Date Food"], "Food & Drink")

create_interests(["Yoga", "Meditation", "Wellness Meetup", "Environmental Care", "Health Meetup", "Date Health"], "Health & Wellness")

create_interests(["Soccer", "Hockey", "Skating", "Ice Skating", "Basseball", "Runing", "Biking", "Axe Throwing", "Flying", "Surf", "Outdoor Sport", "Golf", "Date Sport"], "Sports & Fitness")

create_interests(["Hackaton", "Tech Workshop", "Tech Meetup", "Date Science"], "Science & Technology")

create_interests(["Fashion Show", "Fashion Workshop", "Fashion History", "Date Fashion"], "Fashion & Beauty")

create_interests(["Networking", "Professional Meetup", "Date Business"], "Business & Professional")

p "Interests created!"
