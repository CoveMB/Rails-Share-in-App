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
    address: address,
    description: info[:description],
    event_website: info[:event_website],
  )

  info[:interests].each do |interest|
    event.interests << Interest.find_by_name(interest)
  end

  event.save!
  p "WARNING EVENT NOT GEOCODED for: #{event.name}" unless event.geocoded?
end

Organiser.create!(
  name: "Date Events",
  organiser_type: OrganiserType.find_by_name("City Organiser"),
  address: "",
  description: "A organiser that organise date event for demo day purposes",
  website: "https://www.longueuil.quebec/en/events"
)

create_event(
  organiser: "Date Events",
  event_type: "Exhibition",
  name:"Date Event",
  start_date: DateTime.parse("25th april 2019"),
  end_date: DateTime.parse("27th october 2019"),
  address: "2000 12e Avenue, Pointe-aux-Trembles",
  description: "A date event for demo day purpose",
  event_website: "https://www.musee-mccord.qc.ca/en/exhibitions/art-haida/",
  image: "haida.jpg",
  interests: ["Date Music"]
)


p "Date events created"
