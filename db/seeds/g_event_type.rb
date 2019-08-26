["Exhebition", "Sport Event", "Tour", "Concert", "Outdoor Activity", "Festival", "Association Event", "Adventure"].each do |event_type|
  EventType.create!(name: event_type)
end

p "Event Types created!"
