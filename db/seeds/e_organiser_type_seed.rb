["Museum", "Gallery", "Community Center", "City Organiser", "Association", "Sport Squad", "Atttraction"].each do |organiser_type|
  OrganiserType.create!(name: organiser_type)
end

p "Organiser Type created!"
