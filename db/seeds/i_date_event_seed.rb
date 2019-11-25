# require 'date'
#
# def create_event(info)
#   organiser = Organiser.find_by_name(info[:organiser])
#
#   event = Event.find_or_create_by!(
#     address: info[:address],
#     organiser: organiser,
#     event_type: EventType.find_by_name(info[:event_type]),
#     name: info[:name],
#     start_date: info[:start_date],
#     end_date: info[:end_date],
#     description: info[:description],
#     event_website: info[:event_website],
#   )
#
#   info[:interests].each do |interest|
#     event.interests << Interest.find_by_name(interest)
#   end
#
#   event.save!
#   p "WARNING EVENT NOT GEOCODED for: #{event.address}" unless event.geocoded?
# end
#
# Organiser.create!(
#   name: "Date Events",
#   organiser_type: OrganiserType.find_by_name("City Organiser"),
#   address: "",
#   description: "A organiser that organise date event for demo day purposes",
#   website: "https://www.longueuil.quebec/en/events"
# )
#
#
# ["2000 12e Avenue, Pointe-aux-Trembles", "2480 Chambly Road, Longueuil", "326 Rue Saint-Laurent Ouest, Longueuil", "2778 Boulevard Jacques-Cartier Est, Longueuil", "886 Chambly Road, Longueuil", "1185 Chemin du Tremblay, Longueuil", "155 Boulevard des Laurentides, Laval", "3005 Boulevard de la Concorde Est Laval", "1091 Boulevard des Laurentides", "525 Boulevard Saint-Martin Ouest, Laval", "4183 Boulevard Sainte-Rose, Laval-Ouest"].each do |address|
#   create_event(
#     organiser: "Date Events",
#     event_type: "Exhibition",
#     name:"Date Event",
#     start_date: DateTime.parse("25th april 2019"),
#     end_date: DateTime.parse("27th october 2019"),
#     address: address,
#     description: "A date event for demo day purpose",
#     interests: ["Date Music"]
#   )
# end
#   ["5115 Boulevard Lévesque, Laval", "765 Rue Saint François Xavier, Terrebonne", "5605 Boulevard Taschereau, Brossard", "1 Boulevard des Promenades, Saint-Bruno-de-Montarville", "8517 Rue Hochelaga, Montréal", "3343 Boulevard des Sources, Dollard-des-Ormeaux"].each do |address|
#   create_event(
#     organiser: "Date Events",
#     event_type: "Exhibition",
#     name:"Date Event",
#     start_date: DateTime.parse("25th april 2019"),
#     end_date: DateTime.parse("27th october 2019"),
#     address: address,
#     description: "A date event for demo day purpose",
#     interests: ["Date Exhibition"]
#   )
# end
#
# ["6361 Autoroute Transcanadienne, Pointe-Claire", "11598 Boulevard de Salaberry, Dollard-des-Ormeaux", "6245 Boulevard Métropolitain, Saint-Léonard", "7265 Boulevard des Galeries d'Anjou", "2212 Boulevard Curé-Labelle, Laval"].each do |address|
#   create_event(
#     organiser: "Date Events",
#     event_type: "Exhibition",
#     name:"Date Event",
#     start_date: DateTime.parse("25th april 2019"),
#     end_date: DateTime.parse("27th october 2019"),
#     address: address,
#     description: "A date event for demo day purpose",
#     interests: ["Date Community"]
#   )
# end
#
# ["29 Boulevard Sainte-Rose, Laval", "539 Boulevard Samson, Laval", "1200 Boulevard Rome, Brossard", "1200 Place Nobel, Boucherville", "2802 Rue de Lyon, Longueuil"].each do |address|
#   create_event(
#     organiser: "Date Events",
#     event_type: "Exhibition",
#     name:"Date Event",
#     start_date: DateTime.parse("25th april 2019"),
#     end_date: DateTime.parse("27th october 2019"),
#     address: address,
#     description: "A date event for demo day purpose",
#     interests: ["Date Food"]
#   )
# end
#
# ["11906 Rue Notre-Dame Est, Pointe-aux-Trembles", "12000 Boulevard Armand-Bombardier, Montréal", "6381 Boulevard Roi-René, Anjou", "275 Elm Avenue, Beaconsfield", "42 Avenue Sainte-Anne, Pointe-Claire"].each do |address|
#   create_event(
#     organiser: "Date Events",
#     event_type: "Exhibition",
#     name:"Date Event",
#     start_date: DateTime.parse("25th april 2019"),
#     end_date: DateTime.parse("27th october 2019"),
#     address: address,
#     description: "A date event for demo day purpose",
#     interests: ["Date Health"]
#   )
# end
#
# ["120 Rue du Barry, Kirkland", "539 Boulevard Samson, Laval", "3110 Chemin de Chambly, Longueuil", "6705 Boulevard Chevrier, Brossard", "6349 Boulevard Léger, Montréal-Nord"].each do |address|
#   create_event(
#     organiser: "Date Events",
#     event_type: "Exhibition",
#     name:"Date Event",
#     start_date: DateTime.parse("25th april 2019"),
#     end_date: DateTime.parse("27th october 2019"),
#     address: address,
#     description: "A date event for demo day purpose",
#     interests: ["Date Science"]
#   )
# end
#
# ["6070 Chemin de la Côte-Saint-Luc", "5485 Rue des Jockeys, Montréal", "7155 Chemin de la Côte-Saint-Luc", "71 Montée des Bouleaux, Saint-Constant"].each do |address|
#   create_event(
#     organiser: "Date Events",
#     event_type: "Exhibition",
#     name:"Date Event",
#     start_date: DateTime.parse("25th april 2019"),
#     end_date: DateTime.parse("27th october 2019"),
#     address: address,
#     description: "A date event for demo day purpose",
#     interests: ["Date Fashion"]
#   )
# end
#
# ["166 Bd de l'Industrie, Candiac", "130 Rue St Pierre, Saint-Constant", "7401 Boulevard Newman, LaSalle", "6222 Boulevard Monk, Montréal", "5013 Rue Wellington, Verdun"].each do |address|
#   create_event(
#     organiser: "Date Events",
#     event_type: "Exhibition",
#     name:"Date Event",
#     start_date: DateTime.parse("25th april 2019"),
#     end_date: DateTime.parse("27th october 2019"),
#     address: address,
#     description: "A date event for demo day purpose",
#     interests: ["Date Business"]
#   )
# end
#
# p "Date events created"
# p "#{Event.count} events created"
