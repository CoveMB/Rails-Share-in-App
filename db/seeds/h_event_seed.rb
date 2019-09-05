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

  p event

  event.users = []

  event.image.attach(io: File.open("./app/assets/images/storage/#{info[:image]}"), filename: "#{info[:image]}")
  info[:interests].each do |interest|
    event.interests << Interest.find_by_name(interest)
  end

  times = rand(4..10)

  times.times do
    event.users << User.find(rand(User.first.id..User.last.id))
  end

  event.save!
  p "WARNING EVENT NOT GEOCODED for: #{event.name}" unless event.geocoded?
end

create_event(
  organiser: "McCord",
  event_type: "Exhibition",
  name:"SDING K’AWXANGS – HAIDA: Supernatural Stories",
  start_date: DateTime.parse("25th april 2019"),
  end_date: DateTime.parse("27th october 2019"),
  description: "On their lush islands off the northwest coast of Canada, the Haida created a world of exceptional artistic expression—a world that enabled them to leave their mark on history, despite their virtual disappearance in the late 19th century.Their artistic output demonstrates great technical skill and artistic versatility: carved and painted boxes, living masks, finely woven baskets, complex songs and dances, refined tattoos and imposing totem poles all communicate ideas, conventions, histories and philosophies through abstract and naturalistic forms.",
  event_website: "https://www.musee-mccord.qc.ca/en/exhibitions/art-haida/",
  image: "haida.jpg",
  interests: ["Painting", "Museum Exhibition"]
)

create_event(
  organiser: "McCord",
  event_type: "Exhibition",
  name:"HANNAH CLAUS - There’s a reason for our connection",
  start_date: DateTime.parse("7th march 2019"),
  end_date: DateTime.parse("11th august 2019"),
  description: "The works in this exhibition began with an idea that became something else as a result of time spent opening the drawers of the McCord Museum’s archive to examine many and varied hand-stitched, woven and worn objects, and deciphering hand-written histories: notes, letters and ledgers. The works were developed through thinking about the connections between objects and their makers, objects and their collectors, and how the objects transition between the archive and the living world.",
  event_website: "https://www.musee-mccord.qc.ca/en/exhibitions/hannah-claus/",
  image: "hannahclaus.jpg",
  interests: ["Potery", "Museum Exhibition"]
)

create_event(
  organiser: "Pointe-à-Callière",
  event_type: "Exhibition",
  name:"The Incas - Treasures of Peru",
  start_date: DateTime.parse("27th november 2019"),
  end_date: DateTime.parse("13th april 2019"),
  description: "With its aura of mystery, the Inca civilization evokes a world of dreams. Although the Incas are a greatly admired society, what do we really know about them? How important were they to the history of the Americas? While their domination in the region of the Andean Mountains lasted less than a hundred years (from 1450 to 1532), they managed to build one of the most extensive and tightly controlled empires the world has ever known. Their territory spread from Ecuador to Peru, Bolivia and half of present-day Chile. To build this empire, they made admirable use of technical knowledge and developments of the pre-Columbian civilizations that preceded them to make their own artistic, economic, political and social advances. Their influence was so vast that not even the brutal Spanish Conquest could erase all traces of Inca traditions, which endure today in some contemporary art practices. The Incas were at once the heirs and bequeathers of some of the most fertile customs and exquisite craftsmanship in the world..",
  event_website: "https://pacmusee.qc.ca/en/exhibitions/detail/the-incas-treasures-of-peru/",
  image: "inca.jpg",
  interests: ["Potery", "Painting", "Museum Exhibition"]
)

create_event(
  organiser: "Pointe-à-Callière",
  event_type: "Exhibition",
  name:"Memory Collector",
  start_date: DateTime.parse("27th november 2018"),
  end_date: DateTime.parse("13th april 2020"),
  description: "On May 17, 2017, the Museum unveiled a tribute to North America’s first collector sewer, a majestic feat of civil engineering built between 1832 and 1838.
  The sewer channelled the Little River underground and collected rainwater and wastewater right up until 1989. At that point it was taken out of service and the water was diverted to the network of interceptor sewers leading to the Rivière-des-Prairies treatment plant. Part of the collector sewer beneath Pointe-à-Callière, between the Éperon building and Place Royale, was integrated into the Museum in 1992.",
  event_website: "https://pacmusee.qc.ca/en/exhibitions/detail/memory-collector/",
  image: "memory.jpg",
  interests: ["History", "Museum Exhibition"]
)

create_event(
  organiser: "Pointe-à-Callière",
  event_type: "Exhibition",
  name:"Multimedia Show Generations MTL",
  start_date: DateTime.parse("27th november 2018"),
  end_date: DateTime.parse("13th april 2020"),
  description: "From seats overlooking impressive archaeological remains, the history of Montréal is brought back to life before your very eyes! Projected onto an incredible, immersive set space created especially for the show, Generations MTL will dazzle you with its technological wizardry and artistic sensibility.
  Get wrapped up in the captivating narrative, as six characters—proud heirs of their ancestors’ traditions—tell you all about their Montréal. Learn how, over the centuries, borrowings and exchanges helped forge the city’s identity, making it a true hub at the crossroads of Europe and North America.",
  event_website: "https://pacmusee.qc.ca/en/exhibitions/detail/multimedia-show-generations-mtl/",
  image: "multimedia.jpg",
  interests: ["Multimedia Performence", "Museum Exhibition"]
)

create_event(
  organiser: "Montreal Museum of Fine Arts",
  event_type: "Exhibition",
  name:"LIMINALS - Un rituel fantasme de Jeremy Shaw",
  start_date: DateTime.parse("6th septembre 2018"),
  end_date: DateTime.parse("2 june 2019"),
  description: "The Museum is pleased to present the North American premiere of the video installation Liminals by Jeremy Shaw; a Vancouver artist who lives and works in Berlin. This immersive, multi-sensory experience is made possible for our visitors thanks to a generous loan from the Canadian collector Bruce Bailey.",
  event_website: "https://www.mbam.qc.ca/en/exhibitions/past/jeremy-shaw/",
  image: "beauxarts.jpg",
  interests: ["Multimedia Performence", "Museum Exhibition"]
)

create_event(
  organiser: "Montreal Museum of Fine Arts",
  event_type: "Exhibition",
  name:"THIERRY MUGLER - Couturissime",
  start_date: DateTime.parse("2th march 2019"),
  end_date: DateTime.parse("8th september 2019"),
  description: "The Montreal Museum of Fine Arts is presenting the very first exhibition on the work of French creator Thierry Mugler. Initiated, produced and circulated by the MMFA, this retrospective reveals the multiple worlds of this irrepressible artistic figure – at once visionary couturier, director, photographer and perfumer – by revisiting his prêt-à-porter and haute couture creations.",
  event_website: "https://www.mbam.qc.ca/en/exhibitions/on-view/thierry-mugler/",
  image: "beauxarts2.jpeg",
  interests: ["Fashion History", "Museum Exhibition"]
)

create_event(
  organiser: "Contemporary Art Museum of Montreal",
  event_type: "Exhibition",
  name:"FRANCIS ALŸS - Children’s Games",
  start_date: DateTime.parse("4th august 2018"),
  end_date: DateTime.parse("1th january 2020"),
  description: "Focusing on the theme The Life of Things, proposed by curator María Wills Londoño in collaboration with Audrey Genois and Maude Johnson, the MAC and MOMENTA | Biennale de l’image unite to present Children’s Games by Francis Alÿs.
  Francis Alÿs presents his series Children’s Games, a collection of scenes of children at play around the world. Ongoing since 1999 and now comprising nearly twenty videos, this inventory of childhood activities shows how children turn simple, ordinary things—chairs, coins, sand, stones, plastic bottles—into the foundation of unlikely and fantastical universes.",
  event_website: "https://macm.org/en/exhibitions/francis-alys-childrens-games/",
  image: "macevent.jpg",
  interests: ["Photography", "Museum Exhibition"]
)

create_event(
  organiser: "Centre Phi",
  event_type: "Exhibition",
  name:">HUM(AI)N",
  start_date: DateTime.parse("28th may 2019"),
  end_date: DateTime.parse("29th september 2019"),
  description: ">HUM(AI)N is a meditation on an impending reality in which machines are not separate, but a part of us. Featuring some of the world's latest and most innovative technology-based artworks in virtual reality and artificial intelligence, the exhibition activates the movements of the body by challenging the heart and the human faculties of the mind—faculties that are increasingly being enhanced, altered, and shaped by technology. Welcome to the future.",
  event_website: "https://phi-centre.com/en/event/exhibition-en/",
  image: "phi-humain.jpg",
  interests: ["Multimedia Performence", "Museum Exhibition"]
)

create_event(
  organiser: "Centre Phi",
  event_type: "Exhibition",
  name:"VR Cinema: Short Films on Canvas",
  start_date: DateTime.parse("4th april 2019"),
  end_date: DateTime.parse("29th september 2019"),
  description: "The VR Cinema hosts five virtual reality short films that make up the VR Museum, a project of the Geneva International Film Festival (GIFF). Breaking down the boundaries between digital art, cinema and painting, each VR experience comes alive and expresses itself to the spectators, allowing them to dive further into an imaginary and sensory universe that’s fed by the psyche of each painter.",
  event_website: "https://phi-centre.com/en/event/exhibition-en/",
  image: "phivr.jpg",
  interests: ["Multimedia Performence", "Museum Exhibition"]
)

create_event(
  organiser: "Biosphere",
  event_type: "Exhibition",
  name:"ENVIRONMENT MUSEUM",
  start_date: DateTime.parse("4th april 2018"),
  end_date: DateTime.parse("29th september 2020"),
  description: "As the only museum entirely dedicated to the environment in North America, the Biosphere's mission is to raise citizen awareness, action, and engagement on significant environmental issues.
  Housing the United States pavilion during the Expo 67 world's fair, this architectural masterpiece was designed by noted American architect Buckminster Fuller. The Biosphère is a unique and spectacular site, located in the heart of Montreal at Parc Jean-Drapeau.",
  event_website: "http://www.parcjeandrapeau.com/en/biosphere-environment-museum-montreal/",
  image: "bioimage.jpg",
  interests: ["Environmental Care", "Museum Exhibition"]
)

create_event(
  organiser: "C2 Montreal",
  event_type: "Association Event",
  name: "Commerce + Creativity | International business conference",
  start_date: DateTime.parse("22th may 2019"),
  end_date: DateTime.parse("24th may 2019"),
  description: "C2 Montréal is the most forward-thinking business event in the world. Named best conference four years running, C2 is much more than just simply a conference. We combine progressive and inspiring content in a highly creative, festival-like setting that will blow your mind. At C2, guests transform into active participants who aren’t afraid to dive right in. C2 is for business leaders who want to lead the pack.",
  event_website: "https://www.mtl.org/en/what-to-do/festivals-and-events/c2-mtl-montreal",
  image: "c2event.jpg",
  interests: ["Creative Meetup", "Associations Activities"]
)

create_event(
  organiser: "Rage",
  event_type: "Sport Event",
  name:" AXE THROWING",
  start_date: DateTime.parse("22th may 2019"),
  end_date: DateTime.parse("24th september 2020"),
  description: "This indoor range consists of 11 throwing lanes, where people can get a unique experience in a casual urban atmosphere. Several axe types and professional instructors make Rage a great place to awaken your inner warrior.",
  event_website: "http://www.rageaxethrowing.com/",
  image: "axe.jpg",
  interests: ["Axe Throwing"]
)

create_event(
  organiser: "Rage",
  event_type: "Sport Event",
  name:"AXE THROWING",
  start_date: DateTime.parse("22th may 2019"),
  end_date: DateTime.parse("24th september 2020"),
  description: "This indoor range consists of 11 throwing lanes, where people can get a unique experience in a casual urban atmosphere. Several axe types and professional instructors make Rage a great place to awaken your inner warrior.",
  event_website: "http://www.rageaxethrowing.com/",
  image: "axe.jpg",
  interests: ["Axe Throwing"]
)

create_event(
  organiser: "Montreal on Wheels",
  event_type: "Sport Event",
  name:"MONTRÉAL ON WHEELS",
  start_date: DateTime.parse("22th may 2019"),
  end_date: DateTime.parse("24th october 2019"),
  description: "Montréal on Wheels offers a delicious menu of cycling tours to cater to all tastes. For a taste of Montréal history and neighbourhood life, try the 3 or 4-hours Montréal Plus Tour. If architecture and green space are more to your palate, the Vista-Architecture Tour is sorely tempting. To satiate your inner gourmet (while pedalling off the calories), the Montréal Bike and Bites Tour will have you clamoring for more. And, of course, there’s a kiddie option: the Young Family Bike Tour, complete with a stop for ice cream!
  In addition to its popular guided tours, Montréal on Wheels also offers rides with tour leaders and group packages. Happy cycling!",
  event_website: "https://caroulemontreal.com/",
  image: "bike.jpg",
  interests: ["Biking"]
)

create_event(
  organiser: "Yatai Mtl",
  event_type: "Outdoor Activity",
  name:"YATAI - Japan Street Food Celebration",
  start_date: DateTime.parse("22th june 2019"),
  end_date: DateTime.parse("24th june 2019"),
  description: "The Yatai is the name of the itinerant stand in Japan, a tradition that dates back to the Edo period in the 1630s. This ancient practice is still very popular with the Japanese people during the summer festivals (Matsuri), near the temples, along the rivers or at the exit of the offices.
  An occasion to discover this facet of Japanese culture and share the pleasure of Yatai.",
  event_website: "https://www.yataimtl.com/",
  image: "yataievent.jpg",
  interests: ["Street Food", "Food Festival"]
)

create_event(
  organiser: "Bunker Art Gallery",
  event_type: "Exhibition",
  name:"BUNKER ART - BY YVES LAROCHE",
  start_date: DateTime.parse("22th june 2019"),
  end_date: DateTime.parse("24th june 2020"),
  description: "The Bunker Art Gallery specializes in the artwork resale market, offering quality, thought-provoking pieces to a discerning clientele. Here, you will discover the insightful work of established and emerging local and international artists from various modern and contemporary post-war art movements in addition to an exciting selection of key contemporary artworks from renowned street art and pop-surrealism artists.
  Set in the historical crux of Montréal, the Bunker Art Gallery is ideally situated on Saint-Paul Street, lined with leading galleries. From Riopelle to Banksy, this urban gallery offers iconic works that excite, provoke and astonish.",
  event_website: "https://bunkerart.yveslaroche.com/",
  image: "bunkerevent.jpg",
  interests: ["Galery Exhibit"]
)

create_event(
  organiser: "Oasis Musical",
  event_type: "Concert",
  name:"The Musicale Oasis...",
  start_date: DateTime.parse("22th june 2019"),
  end_date: DateTime.parse("24th june 2020"),
  description: "L'Oasis Musicale is a series of concerts that aims to offer up-and-coming musicians and musicians from the local scene the opportunity to perform live in a charming place in the heart of downtown Montreal. . For several years now, we have set up a series of weekly concerts allowing these young talents to perform in Christ Church Cathedral: every Saturday at 16:30, the Cathedral welcomes young musicians who present us mostly classical music, but also world music or sometimes even jazz or folk music!",
  event_website: "https://www.oasismusicale.ca/oasis",
  image: "oasisevent.jpg",
  interests: ["Concert"]
)

create_event(
  organiser: "Parc Olympique",
  event_type: "Concert",
  name:"FIESTA OLYMPICA",
  start_date: DateTime.parse("9th june 2019"),
  end_date: DateTime.parse("13th october 2019"),
  description: "Fiesta Olympica is a series of free parties that combines dancing, delicious food, and Latin beats. Discover all that Latin American culture has to offer in a tropical oasis in the heart of the city!
  njoy an orchestra, dance lessons from some of the best social-dancing schools, and a fun and festive atmosphere.",
  event_website: "https://parcolympique.qc.ca/en/what-to-do/events-and-activities/fiesta-olympica/",
  image: "fiesta.jpg",
  interests: ["Concert"]
)

create_event(
  organiser: "Montreal Events",
  event_type: "Outdoor Activity",
  name: "Mile-End historical visit",
  start_date: DateTime.parse("9th june 2019"),
  end_date: DateTime.parse("13th october 2019"),
  address: "124 Rue Saint-Viateur Ouest Montreal",
  description: "The eclecticism, creative energy and bohemian spirit emanating from these two dynamic urban hubs are appreciated.
  Cafés, bars, shops, bookstores and restaurants are side by side with former textile mills and churches converted into businesses or condos. A true nerve centre of the Montréal artistic community, the Plateau stands out for its lively commercial avenues, its charming shaded residential streets, its colourful houses and its celebrated spiral staircases. Marginal and cosmopolitan, Mile End is totally in tune with the times. Unearth vintage finds, enjoy original dishes, and don’t forget the famous Montréal bagels.",
  event_website: "http://memoire.mile-end.qc.ca/en/category/annonces-et-activites/visites-a-pied/",
  image: "mileend.jpg",
  interests: ["Neighborhood Visit", "Neighborhood Meetup", "Associations Activities", "Neighborhood History"]
)

create_event(
  organiser: "Montreal Events",
  event_type: "Outdoor Activity",
  name:"Mile-Ex Alexandraplatz Night Market",
  start_date: DateTime.parse("9th june 2019"),
  end_date: DateTime.parse("13th october 2019"),
  address: "150 Rue Saint Zotique Ouest Montréal,",
  description: "There’s something bittersweet about witnessing the development of an emerging neighbourhood. Too often, we’re only privy to our city’s secret spots once they’re out of the bag and crowded, or we want to hold on to them before they are. Mile Ex is currently in the midst of its transformation, and still has that twinge of excitement and mystery to it. Officially called the “Alexandra-Marconi” district, Mile Ex spans from Parc Avenue to Clark Street, between Jean-Talon and the train tracks. It’s a cozy, primarily residential neighbourhood that’s been built up from an austere industrial area by its dedicated residents, yet a new wave of development is beginning to obscure its humble roots.",
  event_website: "https://localfoodtours.com/montreal/mile-ex-montreal-reasons-why-you-should-go/",
  image: "mileex.jpg",
  interests: ["Neighborhood Visit", "Neighborhood Meetup", "Street Food", "Neighborhood History"]
)

create_event(
  organiser: "SOS Labyrinthe",
  event_type: "Adventure",
  name:"SOS LABYRINTHE",
  start_date: DateTime.parse("9th june 2019"),
  end_date: DateTime.parse("13th october 2019"),
  description: "Visitors of all ages hunt for the secrets of this forgotten cargo by exploring a 2-km labyrinth filled with obstacles, dead-ends, traps and clues, in search of four treasures of the longshoremen. For an even greater challenge, face the maze in darkness every Thursday and Friday night in July and August. May to October.",
  event_website: "https://soslabyrinthe.com/en/",
  image: "lym.jpg",
  interests: ["Neighborhood Visit", "Neighborhood Meetup", "Associations Activities", "Neighborhood History"]
)

create_event(
  organiser: "Spade & Palacio",
  event_type: "Tour",
  name: "Beyond the Market",
  start_date: DateTime.parse("9th june 2019"),
  end_date: DateTime.parse("13th october 2019"),
  address: "Jean Talon market Montreal",
  description: "This food tour takes you on a walk to at least six of your local guide’s favourite eateries and watering holes. Jean-Talon Market, our largest farmer’s market, and its surrounding neighbourhoods have everything to satisfy your hunger and quench your thirst, from artisanal charcuteries to craft breweries. You’ll sample a diversity of delicacies reflective of Montréal’s international flavour.",
  event_website: "https://spadeandpalacio.com/tours/montreal-food-tour/",
  image: "jean-talon.jpeg",
  interests: ["Neighborhood Visit", "Neighborhood Meetup", "Associations Activities", "Neighborhood History"]
)

create_event(
  organiser: "Laval Events",
  event_type: "Sport Event",
  name: "SkyVenture",
  start_date: DateTime.parse("9th june 2019"),
  end_date: DateTime.parse("13th october 2019"),
  address: "700 avenue du Cosmodôme, Laval ",
  description: "Spark an adventure! Live with your group, between friends or with your family a unique experience: flying.
  SkyVenture is a centre equipped with a vertical recirculating indoor free fall simulator that reproduces almost perfectly the free fall portion of a skydive, in a safe environment, for anyone 4 years old and up.",
  event_website: "https://www.tourismelaval.com/en/activities-in-laval/what-to-do/skyventure",
  image: "skyline.jpg",
  interests: ["Flying"]
)

create_event(
  organiser: "Laval Events",
  event_type: "Outdoor Activity",
  name: "Maeva Surf",
  start_date: DateTime.parse("9th june 2019"),
  end_date: DateTime.parse("13th october 2019"),
  address: "72005 boulevard Daniel-Johnson, Laval",
  description: "Maeva Surf is an indoor surf centre with a dynamic and safe wave for people from 6 to 86 years old, from beginners to advanced levels.
  Those who prefer to observe or are accompanying someone can relax at the bistro. They can watch the surfers execute their moves while sipping a drink or enjoying a delicious tuna tartar. During the summer months, Maeva Surf opens its vast outdoor terrace.",
  event_website: "https://www.tourismelaval.com/en/activities-in-laval/what-to-do/skyventure",
  image: "skyline.jpg",
  interests: ["Surf", "Outdoor Sport"]
)

create_event(
  organiser: "Laval Events",
  event_type: "Sport Event",
  name: "Exhibition",
  start_date: DateTime.parse("9th june 2019"),
  end_date: DateTime.parse("13th october 2019"),
  address: "2150, autoroute des Laurentides Laval",
  description: "The perfect place to learn more about space is at the Cosmodome, Canada’s only museum entirely dedicated to space sciences. It hosts an exhibition on the solar system and its planets and offers three virtual missions that make us travel to time, transport us in orbit or take part on the first manned mission to Mars.",
  event_website: "https://www.tourismelaval.com/en/activities-in-laval/what-to-do/skyventure",
  image: "cosmodome.jpg",
  interests: ["Museum Exhibition", "Kid Activities"]
)

create_event(
  organiser: "Laval Events",
  event_type: "Exhibition",
  name: "Musée Armand-Frappier",
  start_date: DateTime.parse("9th june 2019"),
  end_date: DateTime.parse("13th october 2019"),
  address: "531, boulevard des Prairies, Laval",
  description: "Enjoy a “scientifically” fascinating outing! Armand-Frappier Museum, a bioscience interpretation centre, offers educational activities designed to help people of all ages gain a better understanding of health-related scientific issues. In the company of scientific instructors, you’ll be immersed into the world of scientific research during your visit of Us and them - From prejudice to racism exhibition, and you’ll even have the opportunity to carry out some lab experiments! .",
  event_website: "https://www.tourismelaval.com/en/activities-in-laval/what-to-do/skyventure",
  image: "armand.jpg",
  interests: ["Museum Exhibition", "Kid Activities"]
)

create_event(
  organiser: "Laval Events",
  event_type: "Outdoor Activity",
  name: "Parc de la Rivière-des-Mille-Îles",
  start_date: DateTime.parse("9th june 2019"),
  end_date: DateTime.parse("13th october 2019"),
  address: "345 Boulevard Sainte-Rose, Laval",
  description: "This most important protected wildlife sanctuary in the Montreal region is a unique outdoor attraction. Go for a cruise on the islands or rent a canoe, kayak, pedal boat or rowboat to observe animals in their natural habitat. Or enjoy the outdoors while hiking on the numerous trails. The park also offers a summer day camp. Free parking and shuttle service are offered free of charge during the summer months. Winter 2019 marked the official opening of the new Exploration Centre. This building which aims at obtaining a LEED Gold certification host a permanent exhibition on the theme of the river, as well as a bistro",
  event_website: "https://www.tourismelaval.com/en/activities-in-laval/what-to-do/skyventure",
  image: "parcoutdoor.jpeg",
  interests: ["Museum Exhibition", "Kid Activities"]
)

create_event(
  organiser: "Laval Events",
  event_type: "Outdoor Activity",
  name: "Souper champêtre gastronomique",
  start_date: DateTime.parse("9th june 2019"),
  end_date: DateTime.parse("13th october 2019"),
  address: "5936 Rue Portelance, Laval",
  description: "C’est avec plaisir que Saveurs de Laval vous invite à célébrer le temps des récoltes lors de la première édition du Souper Champêtre Gastronomique!
  Cet événement est un nouveau concept de coopération et de collaboration du savoir-faire entre les producteurs agricoles, les transformateurs et des chefs restaurateurs mettant en valeur des produits lavallois.
  Venez déguster un menu 5 services concocté avec des produits 100 % locaux par deux chefs lavallois tout en appréciant les quelques notes d’un trio à corde. Vous aurez également l’occasion de rencontrer les producteurs associés aux produits agricoles et transformés servis vous permettant ainsi de découvrir les saveurs de Laval.",
  event_website: "https://www.tourismelaval.com/en/activities-in-laval/what-to-do/skyventure",
  image: "souper.jpeg",
  interests: ["Kid Activities", "Neighborhood Visit", "Neighborhood Meetup", "Food Workshop", "Wine"]
)

create_event(
  organiser: "Laval Events",
  event_type: "Association Event",
  name: "7e Colloque annuel de cancérologie Laval-Laurentides-Lanaudière",
  start_date: DateTime.parse("9th june 2019"),
  end_date: DateTime.parse("13th october 2019"),
  address: "1717 Boulevard le Corbusier Laval",
  description: "La période d'inscription est ouverte jusqu'au vendredi 6 septembre 2019. Profitez d'un tarif avantageux si vous achetez votre billet avant le mercredi 31 juillet 2019.
  Consultez le site Internet du CISSS de Laval pour en savoir plus sur l'événement au www.lavalensante.com/colloque-cancerologie.",
  event_website: "https://www.tourismelaval.com/en/activities-in-laval/what-to-do/skyventure",
  image: "colloc.jpeg",
  interests: ["Professional Meetup", "Networking", "Health Meetup"]
)

create_event(
  organiser: "Laval Events",
  event_type: "Association Event",
  name: "TEDxLaval - Latitude & Commotion | TEDxLavalWomen - BOLD + BRILLANT",
  start_date: DateTime.parse("9th june 2019"),
  end_date: DateTime.parse("13th october 2019"),
  address: "1395, boulevard de la Concorde Ouest Laval",
  description: "La Maison des Arts de Laval est à l’intersection du boulevard de l’Avenir et du boulevard de la Concorde, tout près de la station de métro Montmorency.
  Il y a également un stationnement payant au Collège Montmorency situé tout près.",
  event_website: "https://www.tourismelaval.com/en/activities-in-laval/what-to-do/skyventure",
  image: "ted.jpg",
  interests: ["Professional Meetup", "Networking"]
)

create_event(
  organiser: "Laval Events",
  event_type: "Association Event",
  name: "Et si un défunt voulait vous parler?",
  start_date: DateTime.parse("9th june 2019"),
  end_date: DateTime.parse("13th october 2019"),
  address: "3500 Boulevard du Souvenir Laval",
  description: "Vous croyez percevoir des SIGNES mais vous n’êtes pas tout à fait certain? Est-ce que c’est justement un signe, votre imagination ou un événement physique banal? Est-ce que vous POUVEZ entrer en contact réellement avec un de vos défunts ou ceci n’est réservé qu’aux médiums?",
  event_website: "https://www.tourismelaval.com/en/activities-in-laval/what-to-do/skyventure",
  image: "proche.jpeg",
  interests: ["Professional Meetup", "Networking", "Wellness Meetup", "Health Meetup"]
)

create_event(
  organiser: "Longueuil Events",
  event_type: "Outdoor Activity",
  name: "Tournoi de golf de l'AIEQ",
  start_date: DateTime.parse("9th june 2019"),
  end_date: DateTime.parse("13th october 2019"),
  address: "2500, boulevard Fernand-Lafontaine Longueuil",
  description: "C’est avec beaucoup d’enthousiasme que l’équipe de Déclic se joindra aux membres de l’AIEQ lors de la tenue de son tournoi de golf annuel. Nous sommes très heureux d’avoir été choisis, pour une troisième année consécutive, comme organisme bénéficiaire pour cet événement. Tout au long du parcours, les golfeurs feront la rencontre de quelques jeunes et de membres de l’équipe de Déclic qui leur proposeront différents jeux conçus de manière à rendre l’expérience de cette journée encore plus agréable.",
  event_website: "https://www.tourismelaval.com/en/activities-in-laval/what-to-do/skyventure",
  image: "golf.jpeg",
  interests: ["Golf", "Outdoor Sport"]
)



p "#{Event.all.count} Events created!"
