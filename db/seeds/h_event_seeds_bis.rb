require 'date'

def create_event(info)
  organiser = Organiser.find_by_name(info[:organiser])
  address = info.key?(:address) ? info[:address] : organiser.address
  event = Event.new(
    organiser: organiser,
    event_type: EventType.find_by_name(info[:event_type]),
    name: info[:name],
    start_date: info[:start_date],
    end_date: info[:end_date],
    address: info[:address],
    description: info[:description],
    event_website: info[:event_website],
  )
  event.image.attach(io: File.open("./app/assets/images/storage/#{info[:image]}"), filename: "#{info[:image]}")
  info[:interests].each do |interest|
    event.interests << Interest.find_by_name(interest)
  end
 # ["kimson@gmail.com", "marteen@gmail.com", "john@gmail.com", "camille@gmail.com"].each do |user|
  #  event.users << User.find_by_email(user)
 # end
  event.save!
  p "WARNING EVENT NOT GEOCODED for: #{event.name}" unless event.geocoded?
end

create_event(
  organiser: "Tourisme Laval",
  event_type: "Outdoor Activity",
  name:"AéroSim Expérience",
  start_date: DateTime.parse("25th april 2019"),
  end_date: DateTime.parse("27th october 2019"),
  description: "AeroSim Experience is the leader in flight simulation entertainment of professional level that is open to the general public in Canada. It offers an extremely realistic immersive experience, thanks to high-definition images and true-to-life weather simulations.",
  event_website: "https://www.tourismelaval.com/en/activities-in-laval/what-to-do/aerosim-experience",
  image: "volsimul.jpg",
  interests: ["Flying", "Tech Workshop"]
)

create_event(
  organiser: "Tourismes Laval",
  event_type: "Health",
  name:"Amerispa Sheraton Laval",
  start_date: DateTime.parse("25th april 2019"),
  end_date: DateTime.parse("27th october 2019"),
  description: "The Amerispa centre at the Sheraton Laval will give your body the attention it deserves. After a shopping spree or a day out with friends, take the time to re;ax amd enjoy a great massage as well high-quality skincare and bodycare treatments. Close your eyes, and let go.",
  event_website: "https://www.tourismelaval.com/en/activities-in-laval/what-to-do/amerispa-sheraton-laval",
  image: "spalaval.jpg",
  interests: ["Wellness Meetup", "Health Meetup"]
)
