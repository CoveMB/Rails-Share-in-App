["Exhebition", "Sport Event", "Tour", "Concert", "Outdoor Activities"].each do |event_type|
  EventType.create!(name: event_type)
end

p "Event Types created"
