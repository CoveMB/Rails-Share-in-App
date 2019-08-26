require 'date'

def create_event(info)
  organiser = Organiser.find_by_name(info[:organiser])
  address = info.key?(:address) ? info[:address] : organiser.address
  Event.create!(
    organiser: organiser,
    event_type: EventType.find_by_name(info[:event_type]),
    name: info[:name],
    start_date: info[:start_date],
    end_date: info[:end_date],
    address: address,
    description: info[:description],
    event_website: info[:event_website],
  ).image.attach(io: File.open("./app/assets/images/storage/#{info[:image]}"), filename: "#{info[:image]}")
end

create_event(
  organiser: "McCord",
  event_type: "Exhebition",
  name:"SDING K’AWXANGS – HAIDA: SUPERNATURAL STORIES",
  start_date: DateTime.parse("25th april 2019"),
  end_date: DateTime.parse("27th october 2019"),
  description: "On their lush islands off the northwest coast of Canada, the Haida created a world of exceptional artistic expression—a world that enabled them to leave their mark on history, despite their virtual disappearance in the late 19th century.Their artistic output demonstrates great technical skill and artistic versatility: carved and painted boxes, living masks, finely woven baskets, complex songs and dances, refined tattoos and imposing totem poles all communicate ideas, conventions, histories and philosophies through abstract and naturalistic forms.",
  event_website: "https://www.musee-mccord.qc.ca/en/exhibitions/art-haida/",
  image: "haida.jpg"
)


# create_event(
#   organiser: "",
#   name:"",
#   date: DateTime.parse(""),
#   address: "",
#   description: "",
#   event_website: ""
# )
