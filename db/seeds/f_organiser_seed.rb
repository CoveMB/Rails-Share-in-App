Organiser.find_or_create_by!(
  name: "Montreal Events",
  organiser_type: OrganiserType.find_by_name("City Organiser"),
  address: "Montreal Canada",
  description: "Montréal is a big, busy, exhilarating city, with so much to see and do. To give you some ideas and inspiration for your next trip to Montréal, explore the many “moments” you can live in the city. Think of them as bite-sized snacks of information to whet your appetite for the big buffet of choices you have when you get here. The more you like and interact with moments, the more you will receive personalized recommendations along similar themes. And, of course, it’s Montréal, so prepare for a few surprises along the way!",
  website: "https://www.mtl.org/en"
).avatar.attach(io: File.open('./app/assets/images/storage/montreal.jpg'), filename: 'montreal.jpg')

Organiser.find_or_create_by!(
  name: "Pointe-à-Callière",
  organiser_type: OrganiserType.find_by_name("Museum"),
  address: "350 Place Royale, Ville-Marie Montréal",
  description: "Pointe-à-Callière Museum was established in 1992 to honor Montreal’s 350th anniversary, but its historical foundations are much deeper than that. The museum was built on important archaeological sites, adding another dimension to the centuries of history on display, from the settlements of the region’s indigenous people to the present day. This is the most-visited museum in the city, and in addition to its permanent exhibitions, Pointe-à-Callière holds a multimedia show and three annual national and international exhibitions.",
  website: "https://pacmusee.qc.ca/en/"
).avatar.attach(io: File.open('./app/assets/images/storage/pac.png'), filename: 'pac.png')

Organiser.find_or_create_by!(
  name: "Montreal Museum of Fine Arts",
  organiser_type: OrganiserType.find_by_name("Museum"),
  address: "1380 Rue Sherbrooke Ouest, Ville-Marie Montréal",
  description: "Montreal Museum of Fine Arts (Musée des Beaux-Arts) has the reputation of being the city’s most prestigious museum. It was originally by a group of local art collectors and patrons founded in 1860, and today the museum holds over 41,000 works dating from antiquity to the present day—from paintings, sculptures, graphic arts, photographs, and decorative art.",
  website: "https://www.mbam.qc.ca/"
).avatar.attach(io: File.open('./app/assets/images/storage/mbam.png'), filename: 'mbam.png')

Organiser.find_or_create_by!(
  name: "Contemporary Art Museum of Montreal",
  organiser_type: OrganiserType.find_by_name("Museum"),
  address: "185 Rue Sainte-Catherine Ouest, Ville-Marie Montréal",
  description: "Situated in the Quartier des Spectacles, the Musée d’art contemporain (MAC) has been exhibiting some of the best contemporary art from around the globe since 1964. Here, visitors can explore an array of digital and sound pieces, installations, paintings, ephemeral works, sculptures, and more. MAC also organizes art performances and other festive events.",
  website: "https://macm.org/"
).avatar.attach(io: File.open('./app/assets/images/storage/mac.jpg'), filename: 'mac.jpg')

Organiser.find_or_create_by!(
  name: "McCord",
  organiser_type: OrganiserType.find_by_name("Museum"),
  address: "690 Rue Sherbrooke Ouest, Ville-Marie Montréal",
  description: "Dedicated to studying and preserving Canadian history with particular emphasis on celebrating the history, people, and communities of Montreal, the McCord Museum was founded in 1921. With more than more than 150,000 visitors, its collections include ethological and archaeological objects, costume and textile pieces, photographs, paintings, prints, decorative artworks, and textual archives.",
  website: "https://www.musee-mccord.qc.ca/fr/"
).avatar.attach(io: File.open('./app/assets/images/storage/mccord.jpeg'), filename: 'mccord.jpeg')

Organiser.find_or_create_by!(
  name: "Centre Phi",
  organiser_type: OrganiserType.find_by_name("Museum"),
  address: "407 Rue Saint-Pierre, Montréal",
  description: "Located in a meticulously-restored historic building, the Phi Centre buzzes with original and eclectic artistic activity. This multifunctional site includes an art gallery, cinema, theatre, performance space, and production facilities.",
  website: "https://phi-centre.com"
).avatar.attach(io: File.open('./app/assets/images/storage/phi.jpeg'), filename: 'phi.jpeg')

Organiser.find_or_create_by!(
  name: "Biosphere",
  organiser_type: OrganiserType.find_by_name("Museum"),
  address: "160 ch du Tour de l'Isle Montreal",
  description: "Located in the Sainte-Hélène Island, in the parc Jean Drapeau, the Biosphere, Environment museum, offers green technologies, as well as 12 entertaining and informative interactive exhibitions and activities aimed at developing a better understanding of today’s and tomorrow’s major environmental issues. Home to the United States pavilion at the 1967 universal exposition, the Biosphere is an architectural masterpiece designed by the famous American architect, Richard Buckminster Fuller. Visitors can admire the breathtaking view of downtown Montreal and the St. Lawrence River. 2020 will mark the Biosphere 25th year of existence. Year after year, Fuller’s dome is dedicated to human creativity in the face of global environmental change.",
  website: "https://www.canada.ca/fr/environnement-changement-climatique/services/biosphere.html"
).avatar.attach(io: File.open('./app/assets/images/storage/jeandrapeau.jpg'), filename: 'jeandrapeau.jpg')

Organiser.find_or_create_by!(
  name: "C2 Montreal",
  organiser_type: OrganiserType.find_by_name("Association"),
  address: "355 rue Sainte-Catherine Est Montreal",
  description: "World-renowned speakers, interactive exhibits, collaborative workshops, and a collective experience make up C2MTL, an immersive three-day conference uniting international businesspeople with the goal of exploring innovative solutions to contemporary challenges.",
  website: "https://www.c2montreal.com"
).avatar.attach(io: File.open('./app/assets/images/storage/c2-montreal.png'), filename: 'c2-montreal.png')

Organiser.find_or_create_by!(
  name: "Rage",
  organiser_type: OrganiserType.find_by_name("Sport Squad"),
  address: "1436 rue Amherst, Montréal",
  description: "This indoor range consists of 11 throwing lanes, where people can get a unique experience in a casual urban atmosphere. Several axe types and professional instructors make Rage a great place to awaken your inner warrior.",
  website: "http://www.rageaxethrowing.com/"
).avatar.attach(io: File.open('./app/assets/images/storage/rage.jpg'), filename: 'rage.jpg')

Organiser.find_or_create_by!(
  name: "Montreal on Wheels",
  organiser_type: OrganiserType.find_by_name("Sport Squad"),
  address: "27 rue de la Commune Est Montréal",
  description: "Montréal is a bike-friendly city with benefits: unique bike tours organized by Montréal on Wheels provide a different and most pleasurable way to discover the city. find_or_create_byd by professional guides, these thematic tours open up the city’s history, neighbourhoods, architecture, cuisine and quirky charm in a way you would have never thought possible!",
  website: "https://caroulemontreal.com/"
).avatar.attach(io: File.open('./app/assets/images/storage/montrealonwheels.png'), filename: 'montrealonwheels.png')

Organiser.find_or_create_by!(
  name: "Yatai Mtl",
  organiser_type: OrganiserType.find_by_name("Association"),
  address: "5635 Rue Saint-Dominique, Montreal",
  description: "The Yatai is the name of the itinerant stand in Japan, a tradition that dates back to the Edo period in the 1630s. This ancient practice is still very popular with the Japanese people during the summer festivals (Matsuri), near the temples, along the rivers or at the exit of the offices.",
  website: "https://www.yataimtl.com/"
).avatar.attach(io: File.open('./app/assets/images/storage/yatai.jpeg'), filename: 'yatai.jpeg')

Organiser.find_or_create_by!(
  name: "Bunker Art Gallery",
  organiser_type: OrganiserType.find_by_name("Gallery"),
  address: "206, rue Saint-Paul Ouest, Montréal",
  description: "The Bunker Art Gallery specializes in the artwork resale market, offering quality, thought-provoking pieces to a discerning clientele. Here, you will discover the insightful work of established and emerging local and international artists from various modern and contemporary post-war art movements in addition to an exciting selection of key contemporary artworks from renowned street art and pop-surrealism artists.",
  website: "bunkerart.yveslaroche.com"
).avatar.attach(io: File.open('./app/assets/images/storage/bunker.jpg'), filename: 'bunker.jpg')

Organiser.find_or_create_by!(
  name: "Oasis Musical",
  organiser_type: OrganiserType.find_by_name("Association"),
  address: "635 rue Sainte-Catherine Ouest, Montréal",
  description: "Free weekly classical music concerts.",
  website: "https://www.oasismusicale.ca/"
).avatar.attach(io: File.open('./app/assets/images/storage/oasis.webp'), filename: 'oasis.webp')

Organiser.find_or_create_by!(
  name: "Parc Olympique",
  organiser_type: OrganiserType.find_by_name("Association"),
  address: "4141, avenue Pierre-De Coubertin, Montreal",
  description: "A daring architectural site, the Olympic Park was built to accommodate the 1976 Summer Olympics and has since been host to more than one hundred million visitors.  Whether to admire Montreal from atop the highest inclined tower in the world, to attend an event in the Stadium, to exercise at the Sports Centre—which is also home to major national and international competitions—or to take part in an outdoor event at the Esplanade, there is something for everyone at the Olympic Park.",
  website: "https://parcolympique.qc.ca"
).avatar.attach(io: File.open('./app/assets/images/storage/parc.png'), filename: 'parc.png')

Organiser.find_or_create_by!(
  name: "SOS Labyrinthe",
  organiser_type: OrganiserType.find_by_name("Atttraction"),
  address: "Vieux-port de Montreal",
  description: "Visitors of all ages hunt for the secrets of this forgotten cargo by exploring a 2-km labyrinth filled with obstacles, dead-ends, traps and clues, in search of four treasures of the longshoremen. For an even greater challenge, face the maze in darkness every Thursday and Friday night in July and August. May to October.",
  website: "https://soslabyrinthe.com"
).avatar.attach(io: File.open('./app/assets/images/storage/logoSOS.png'), filename: 'logoSOS.png')

Organiser.find_or_create_by!(
  name: "Spade & Palacio",
  organiser_type: OrganiserType.find_by_name("Atttraction"),
  address: "3801 #B Saint-Denis Montreal",
  description: "Spade & Palacio is a collaboration of two born and raised, young Montrealers who are passionate about our city and love to show it. We originally met during our guiding classes and bonded over a shared interest and intention of having our visitors walk away with a day in the life of a local experience. Three years later we decided to take matters into our own hands and the company was born.",
  website: "https://spadeandpalacio.com"
).avatar.attach(io: File.open('./app/assets/images/storage/sp.png'), filename: 'sp.png')

Organiser.find_or_create_by!(
  name: "Laval Events",
  organiser_type: OrganiserType.find_by_name("City Organiser"),
  address: "Laval City Hall, 1 Place du Souvenir, Laval",
  description: "« Je veux vous présenter Laval aujourd'hui, une ville transformée qui s'affirme comme la 3e grande ville du Québec, avec une économie solide, dynamique et diversifiée, une ville qui vous offre un grand potentiel de développement. Marc Demers​
  C’est ainsi que le maire de Laval, Marc Demers, s’est adressé à plus de 250 membres et invités de la Chambre de commerce du Montréal métropolitain (CCMM). Après avoir remercié le président de la Chambre, Michel Leblanc, pour cette occasion exceptionnelle qu’on lui offrait de parler de l’étonnante diversification de l’économie lavalloise, le maire Demers a exposé en 3 volets toute la métamorphose municipale, toujours en progression rapide.",
  website: "https://www.laval.ca/Pages/Fr/accueil.aspx"
).avatar.attach(io: File.open('./app/assets/images/storage/laval.gif'), filename: 'laval.gif')

Organiser.find_or_create_by!(
  name: "Longueuil Events",
  organiser_type: OrganiserType.find_by_name("City Organiser"),
  address: "4250 Ch de la Savane, Saint-Hubert",
  description: "Longueuil compte une foule d'événements, de fêtes et de festivals qui font d'elle une ville vivante et accueillante. Temps et passion sont investis pour vous divertir et vous offrir une vie municipale des plus enrichissantes.
  Voici un aperçu des grands événements annuels à surveiller et à inscrire à votre agenda.",
  website: "https://www.longueuil.quebec/en/events"
).avatar.attach(io: File.open('./app/assets/images/storage/long.gif'), filename: 'long.gif')

p "Organisers created!"
