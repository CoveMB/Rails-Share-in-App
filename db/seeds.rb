Interest.destroy_all
InterestCategory.destroy_all
Organiser.destroy_all
OrganiserType.destroy_all
Event.destroy_all
User.destroy_all

p "Data destroyed"

User.create!(
  name: "Benjamin",
  surname: "Marquis",
  bio: "I came to Montreal a couple of years ago to study sociology. After graduating I became a digital marketing specialist and web analyst. I started learning JavaScript then Python to interact with the data I was exposed to. I found that building stuff suited my pragmatic profile and decided to push it further!",
  address: "5417 rue saint dominique montreal",
  email: "bmarquiscom@gmail.com",
  password: "benjamin23",
  admin: true
)

User.create!(
  name: "Jean",
  surname: "Blanchard",
  bio: "I just graduated from a digital marketing&communication degree and I've been working for the past year for Caterpillar, a industrial company equipment, mostly in Africa.",
  address: "6417 rue hutchison montreal",
  email: "jean@gmail.com",
  password: "password123"
)

User.create!(
  name: "Beau",
  surname: "Ruster",
  bio: "I am currently an engineering student who is interested in learning more about all aspects of programming. My goal is to gain the skills necessary to make my ideas for an app or website a reality.",
  address: "5483 avenue Parc montreal",
  email: "beau@gmail.com",
  password: "password123"
)

p "User created"

["Music & Dance", "Exhibition & Visual Art", "Community & Culture", "Food & Drink", "Health & Wellness", "Sports & Fitness", "Science & Technology", "Fashion & Beauty", "Business & Professional"].each do |interest_category|
  InterestCategory.create!(name: interest_category)
end

p "Interest Categories created!"

def create_interests(interests, interest_category)
  interests.each do |interest|
    Interest.create!(
      name: interest,
      interest_category: InterestCategory.find_by_name(interest_category)
    )
  end
end

create_interests(["Performance", "Concert", "Festival", "Party"], "Music & Dance")

create_interests(["Galery Exhibit", "Museum Exhibition", "Photography", "Painting", "Movie"], "Exhibition & Visual Art")

create_interests(["Neighborhood Visit", "Neighborhood Meetup", "Associations Activities"], "Community & Culture")

create_interests(["Street Food", "Wine", "Food Festival", "Food Workshop"], "Food & Drink")

create_interests(["Yoga", "Meditation", "Wellness Meetup"], "Health & Wellness")

create_interests(["Soccer", "Hockey", "Skating", "Ice Skating", "Basseball", "Runing"], "Sports & Fitness")

create_interests(["Hackaton", "Tech Workshop", "Tech Meetup"], "Science & Technology")

create_interests(["Fashion Show", "Fashion Workshop"], "Fashion & Beauty")

create_interests(["Networking", "Professional Meetup"], "Business & Professional")

p "Interests created!"

["Museum", "Gallery", "Community Center", "City Organiser", "Association", "Sport Squad", "Atttraction"].each do |organiser_type|
  OrganiserType.create!(name: organiser_type)
end

p "Organiser Type created!"

Organiser.create!(
  name: "Montreal Events",
  organiser_type: OrganiserType.find_by_name("City Organiser"),
  address: "Montreal Canada",
  description: "Montréal is a big, busy, exhilarating city, with so much to see and do. To give you some ideas and inspiration for your next trip to Montréal, explore the many “moments” you can live in the city. Think of them as bite-sized snacks of information to whet your appetite for the big buffet of choices you have when you get here. The more you like and interact with moments, the more you will receive personalized recommendations along similar themes. And, of course, it’s Montréal, so prepare for a few surprises along the way!",
  website: "https://www.mtl.org/en"
).avatar.attach(io: File.open('./app/assets/images/storage/montreal.jpg'), filename: 'montreal.jpg')

Organiser.create!(
  name: "Pointe-à-Callière",
  organiser_type: OrganiserType.find_by_name("Museum"),
  address: "350 Place Royale, Ville-Marie Montréal, Québec, H2Y 3Y5, Canada",
  description: "Pointe-à-Callière Museum was established in 1992 to honor Montreal’s 350th anniversary, but its historical foundations are much deeper than that. The museum was built on important archaeological sites, adding another dimension to the centuries of history on display, from the settlements of the region’s indigenous people to the present day. This is the most-visited museum in the city, and in addition to its permanent exhibitions, Pointe-à-Callière holds a multimedia show and three annual national and international exhibitions.",
  website: "https://pacmusee.qc.ca/en/"
).avatar.attach(io: File.open('./app/assets/images/storage/pac.png'), filename: 'pac.png')

Organiser.create!(
  name: "Montreal Museum of Fine Arts",
  organiser_type: OrganiserType.find_by_name("Museum"),
  address: "1380 Rue Sherbrooke Ouest, Ville-Marie Montréal, Québec, H3G 1J5, Canada",
  description: "Montreal Museum of Fine Arts (Musée des Beaux-Arts) has the reputation of being the city’s most prestigious museum. It was originally by a group of local art collectors and patrons founded in 1860, and today the museum holds over 41,000 works dating from antiquity to the present day—from paintings, sculptures, graphic arts, photographs, and decorative art.",
  website: "https://www.mbam.qc.ca/"
).avatar.attach(io: File.open('./app/assets/images/storage/mbam.png'), filename: 'mbam.png')

Organiser.create!(
  name: "Contemporary Art Museum of Montreal",
  organiser_type: OrganiserType.find_by_name("Museum"),
  address: "185 Rue Sainte-Catherine Ouest, Ville-Marie Montréal, Québec, H2X 3X5, Canada",
  description: "Situated in the Quartier des Spectacles, the Musée d’art contemporain (MAC) has been exhibiting some of the best contemporary art from around the globe since 1964. Here, visitors can explore an array of digital and sound pieces, installations, paintings, ephemeral works, sculptures, and more. MAC also organizes art performances and other festive events.",
  website: "https://macm.org/"
).avatar.attach(io: File.open('./app/assets/images/storage/mac.jpg'), filename: 'mac.jpg')

Organiser.create!(
  name: "McCord",
  organiser_type: OrganiserType.find_by_name("Museum"),
  address: "690 Rue Sherbrooke Ouest, Ville-Marie Montréal, Québec, H3A 1E9, Canada",
  description: "Dedicated to studying and preserving Canadian history with particular emphasis on celebrating the history, people, and communities of Montreal, the McCord Museum was founded in 1921. With more than more than 150,000 visitors, its collections include ethological and archaeological objects, costume and textile pieces, photographs, paintings, prints, decorative artworks, and textual archives.",
  website: "https://www.musee-mccord.qc.ca/fr/"
).avatar.attach(io: File.open('./app/assets/images/storage/mccord.jpeg'), filename: 'mccord.jpeg')

Organiser.create!(
  name: "Centre Phi",
  organiser_type: OrganiserType.find_by_name("Museum"),
  address: "407 Rue Saint-Pierre, Montréal, QC H2Y 2M3",
  description: "Located in a meticulously-restored historic building, the Phi Centre buzzes with original and eclectic artistic activity. This multifunctional site includes an art gallery, cinema, theatre, performance space, and production facilities.",
  website: "https://phi-centre.com"
).avatar.attach(io: File.open('./app/assets/images/storage/phi.jpeg'), filename: 'phi.jpeg')

Organiser.create!(
  name: "Biosphere",
  organiser_type: OrganiserType.find_by_name("Museum"),
  address: "160, chemin Tour-de-l'Isle, Île Sainte-Hélène, Montréal QC  H3C 4G8",
  description: "Located in the Sainte-Hélène Island, in the parc Jean Drapeau, the Biosphere, Environment museum, offers green technologies, as well as 12 entertaining and informative interactive exhibitions and activities aimed at developing a better understanding of today’s and tomorrow’s major environmental issues. Home to the United States pavilion at the 1967 universal exposition, the Biosphere is an architectural masterpiece designed by the famous American architect, Richard Buckminster Fuller. Visitors can admire the breathtaking view of downtown Montreal and the St. Lawrence River. 2020 will mark the Biosphere 25th year of existence. Year after year, Fuller’s dome is dedicated to human creativity in the face of global environmental change.",
  website: "https://www.canada.ca/fr/environnement-changement-climatique/services/biosphere.html"
).avatar.attach(io: File.open('./app/assets/images/storage/jeandrapeau.jpg'), filename: 'jeandrapeau.jpg')

Organiser.create!(
  name: "C2 Montreal",
  organiser_type: OrganiserType.find_by_name("Association"),
  address: "355 Sainte-Catherine Montreal canada",
  description: "World-renowned speakers, interactive exhibits, collaborative workshops, and a collective experience make up C2MTL, an immersive three-day conference uniting international businesspeople with the goal of exploring innovative solutions to contemporary challenges.",
  website: "https://www.c2montreal.com"
).avatar.attach(io: File.open('./app/assets/images/storage/c2-montreal.png'), filename: 'c2-montreal.png')

Organiser.create!(
  name: "Rage",
  organiser_type: OrganiserType.find_by_name("Sport Squad"),
  address: "1436 rue Amherst, Montréal, Qc, Canada H2L 3L3",
  description: "This indoor range consists of 11 throwing lanes, where people can get a unique experience in a casual urban atmosphere. Several axe types and professional instructors make Rage a great place to awaken your inner warrior. ",
  website: "http://www.rageaxethrowing.com/"
).avatar.attach(io: File.open('./app/assets/images/storage/rage.jpg'), filename: 'rage.jpg')

Organiser.create!(
  name: "Montreal on Wheels",
  organiser_type: OrganiserType.find_by_name("Sport Squad"),
  address: "27 rue de la Commune Est Montréal H2Y 1H9",
  description: "Montréal is a bike-friendly city with benefits: unique bike tours organized by Montréal on Wheels provide a different and most pleasurable way to discover the city. Created by professional guides, these thematic tours open up the city’s history, neighbourhoods, architecture, cuisine and quirky charm in a way you would have never thought possible!",
  website: "https://caroulemontreal.com/"
).avatar.attach(io: File.open('./app/assets/images/storage/montrealonwheels.png'), filename: 'montrealonwheels.png')

Organiser.create!(
  name: "Yatai Mtl",
  organiser_type: OrganiserType.find_by_name("Association"),
  address: "5635 Rue Saint-Dominique, Montreal, QC H2T 1V7",
  description: "The Yatai is the name of the itinerant stand in Japan, a tradition that dates back to the Edo period in the 1630s. This ancient practice is still very popular with the Japanese people during the summer festivals (Matsuri), near the temples, along the rivers or at the exit of the offices.",
  website: "https://www.yataimtl.com/"
).avatar.attach(io: File.open('./app/assets/images/storage/yatai.jpeg'), filename: 'yatai.jpeg')

Organiser.create!(
  name: "Bunker Art Galler",
  organiser_type: OrganiserType.find_by_name("Gallery"),
  address: "206, rue Saint-Paul Ouest, Montréal, (Québec) H2Y 1Z9",
  description: "The Bunker Art Gallery specializes in the artwork resale market, offering quality, thought-provoking pieces to a discerning clientele. Here, you will discover the insightful work of established and emerging local and international artists from various modern and contemporary post-war art movements in addition to an exciting selection of key contemporary artworks from renowned street art and pop-surrealism artists.",
  website: "bunkerart.yveslaroche.com"
).avatar.attach(io: File.open('./app/assets/images/storage/bunker.jpg'), filename: 'bunker.jpg')

Organiser.create!(
  name: "Oasis Musical",
  organiser_type: OrganiserType.find_by_name("Association"),
  address: "635 rue Sainte-Catherine Ouest, Montréal, QC, H3A 2B8",
  description: "Free weekly classical music concerts.",
  website: "https://www.oasismusicale.ca/"
).avatar.attach(io: File.open('./app/assets/images/storage/oasis.webp'), filename: 'oasis.webp')

Organiser.create!(
  name: "Parc Olympique",
  organiser_type: OrganiserType.find_by_name("Association"),
  address: "4141, avenue Pierre-De Coubertin, Montreal, Québec H1V 3N78",
  description: "A daring architectural site, the Olympic Park was built to accommodate the 1976 Summer Olympics and has since been host to more than one hundred million visitors.  Whether to admire Montreal from atop the highest inclined tower in the world, to attend an event in the Stadium, to exercise at the Sports Centre—which is also home to major national and international competitions—or to take part in an outdoor event at the Esplanade, there is something for everyone at the Olympic Park.",
  website: "https://parcolympique.qc.ca"
).avatar.attach(io: File.open('./app/assets/images/storage/parc.png'), filename: 'parc.png')

Organiser.create!(
  name: "SOS Labyrinthe",
  organiser_type: OrganiserType.find_by_name("Atttraction"),
  address: "Hangar 16 Old Port of Montreal Clock Tower Pier",
  description: "Visitors of all ages hunt for the secrets of this forgotten cargo by exploring a 2-km labyrinth filled with obstacles, dead-ends, traps and clues, in search of four treasures of the longshoremen. For an even greater challenge, face the maze in darkness every Thursday and Friday night in July and August. May to October.",
  website: "https://soslabyrinthe.com"
).avatar.attach(io: File.open('./app/assets/images/storage/logoSOS.png'), filename: 'logoSOS.png')

Organiser.create!(
  name: "Spade & Palacio",
  organiser_type: OrganiserType.find_by_name("Atttraction"),
  address: "3801 #B Saint-Denis H2W 2M4",
  description: "Spade & Palacio is a collaboration of two born and raised, young Montrealers who are passionate about our city and love to show it. We originally met during our guiding classes and bonded over a shared interest and intention of having our visitors walk away with a day in the life of a local experience. Three years later we decided to take matters into our own hands and the company was born.",
  website: "https://spadeandpalacio.com"
).avatar.attach(io: File.open('./app/assets/images/storage/spade.png'), filename: 'spade.png')

p "Organisers created!"
