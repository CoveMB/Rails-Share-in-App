require 'date'

def create_event(info)
  organiser = Organiser.find_by_name(info[:organiser])

  event = Event.find_or_create_by!(
    address: info[:address],
    organiser: organiser,
    event_type: EventType.find_by_name(info[:event_type]),
    name: info[:name],
    start_date: info[:start_date],
    end_date: info[:end_date],
    description: info[:description],
    event_website: info[:event_website],
  )

  p event

  info[:interests].each do |interest|
    event.interests << Interest.find_by_name(interest)
  end

  event.save!
  p event
  p "WARNING EVENT NOT GEOCODED for: #{event.address}" unless event.geocoded?
end

Organiser.create!(
  name: "Date Events",
  organiser_type: OrganiserType.find_by_name("City Organiser"),
  address: "",
  description: "A organiser that organise date event for demo day purposes",
  website: "https://www.longueuil.quebec/en/events"
)


["2000 12e Avenue, Pointe-aux-Trembles", "2480 Chambly Road, Longueuil", "326 Rue Saint-Laurent Ouest, Longueuil", "2778 Boulevard Jacques-Cartier Est, Longueuil", "886 Chambly Road, Longueuil", "1185 Chemin du Tremblay, Longueuil", "155 Boulevard des Laurentides, Laval", "3005 Boulevard de la Concorde Est Laval", "1091 Boulevard des Laurentides", "525 Boulevard Saint-Martin Ouest, Laval", "4183 Boulevard Sainte-Rose, Laval-Ouest"].each do |address|
  create_event(
    organiser: "Date Events",
    event_type: "Exhibition",
    name:"Date Event",
    start_date: DateTime.parse("25th april 2019"),
    end_date: DateTime.parse("27th october 2019"),
    address: address,
    description: "A date event for demo day purpose",
    interests: ["Date Music"]
  )
end


p "Date events created"
p "#{Event.count} events created"