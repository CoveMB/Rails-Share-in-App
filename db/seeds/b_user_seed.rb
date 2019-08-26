User.create!(
  name: "admin",
  surname: "admin",
  password: "password123",
  address: "1354 rue Casgrain montreal",
  email: "admin@gmail.com",
  admin: true
)

User.create!(
  name: "Attendee",
  surname: "Attendee",
  password: "password123",
  address: "1359 rue Casgrain montreal",
  email: "attendee@gmail.com"
)

User.create!(
  name: "Attendee2",
  surname: "Attendee2",
  password: "password123",
  address: "1339 rue Casgrain montreal",
  email: "attendee2@gmail.com"
)

User.create!(
  name: "Attendee3",
  surname: "Attendee3",
  password: "password123",
  address: "1339 rue Hutchison montreal",
  email: "attendee3@gmail.com"
)

User.create!(
  name: "Benjamin",
  surname: "Marquis",
  bio: "I came to Montreal a couple of years ago to study sociology. After graduating I became a digital marketing specialist and web analyst. I started learning JavaScript then Python to interact with the data I was exposed to. I found that building stuff suited my pragmatic profile and decided to push it further!",
  address: "5417 rue saint dominique montreal",
  email: "bmarquiscom@gmail.com",
  password: "benjamin23"
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

p "User created!"
