require 'date'

def create_event(info)
  organiser = Organiser.find_by_name(info[:organiser])
  address = info.key?(:address) ? info[:address] : organiser.address

  event = Event.find_or_create_by!(
    organiser: organiser,
    event_type: EventType.find_by_name(info[:event_type]),
    name: info[:name],
    start_date: info[:start_date],
    end_date: info[:end_date],
    address: address,
    description: info[:description],
    event_website: info[:event_website],
  )

  event.users = []
  event.interests = []

  event.image.attach(io: File.open("./app/assets/images/storage/#{info[:image]}"), filename: "#{info[:image]}")
  info[:interests].each do |interest|
    event.interests << Interest.find_by_name(interest)
  end

  times = rand(4..12)

  attendee = []

  times.times do
    attendee << User.find(rand(User.second.id..User.last.id))
    event.users = attendee.uniq
  end

  event.save!
  p "WARNING EVENT NOT GEOCODED for: #{event.name}" unless event.geocoded?
end

create_event(
  organiser: "C2 Montreal",
  event_type: "Outdoor Activity",
  name:"SUSHI.. For free!",
  start_date: DateTime.parse("22th june 2019"),
  end_date: DateTime.parse("24th june 2019"),
  address: "4943 boulevard Rosemont Montreal",
  description: "The Yatai is the name of the itinerant stand in Japan, a tradition that dates back to the Edo period in the 1630s. This ancient practice is still very popular with the Japanese people during the summer festivals (Matsuri), near the temples, along the rivers or at the exit of the offices.
  An occasion to discover this facet of Japanese culture and share the pleasure of Yatai.",
  event_website: "https://www.yataimtl.com/",
  image: "sushi.jpg",
  interests: ["Street Food", "Food Festival"]
)

create_event(
  organiser: "Spade & Palacio",
  event_type: "Outdoor Activity",
  name:"UKRAINIAN - Street Food Expérience",
  start_date: DateTime.parse("14th september 2019"),
  end_date: DateTime.parse("15th september 2019"),
  address: "6201 boulevard monk",
  description: "AeroSim Experience is the leader in flight simulation entertainment of professional level that is open to the general public in Canada. It offers an extremely realistic immersive experience, thanks to high-definition images and true-to-life weather simulations.",
  event_website: "https://www.tourismelaval.com/en/activities-in-laval/what-to-do/aerosim-experience",
  image: "jean-talon.jpeg",
  interests: ["Street Food", "Food Festival"]
)

create_event(
  organiser: "Parc Olympique",
  event_type: "Outdoor Activity",
  name:"FOOD TRUCK - First Sunday",
  start_date: DateTime.parse("22th june 2019"),
  end_date: DateTime.parse("24th june 2019"),
  address: "4061 rue Ontario Est Montreal",
  description: "The Yatai is the name of the itinerant stand in Japan, a tradition that dates back to the Edo period in the 1630s. This ancient practice is still very popular with the Japanese people during the summer festivals (Matsuri), near the temples, along the rivers or at the exit of the offices.
  An occasion to discover this facet of Japanese culture and share the pleasure of Yatai.",
  event_website: "https://www.yataimtl.com/",
  image: "foodtruck.jpg",
  interests: ["Street Food", "Food Festival"]
)
