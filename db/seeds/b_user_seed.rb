User.create!(
  name: "admin",
  surname: "admin",
  password: "password123",
  address: "1354 rue Casgrain montreal",
  email: "admin@gmail.com",
  admin: true
)

doan = User.new(
  name: "Kimson",
  surname: "Doan",
  password: "password123",
  address: "1359 rue Casgrain montreal",
  email: "kimson@gmail.com"
)
doan.avatar.attach(io: File.open("./app/assets/images/storage/kimsonpic.webp"), filename: "kimsonpic.webp")
doan.image.attach(io: File.open("./app/assets/images/storage/kimsonimage.jpg"), filename: "kimsonimage.jpg")
doan.save!

camille = User.new(
  name: "Camille",
  surname: "Villard",
  bio: "Interested in all things creative. Freelance graphic designer, art director & content creator, obsessed (and a little bit annoying about that) with typography, avocado toasts and sports. learning, coding & reading all the documentation enthusiast.",
  password: "password123",
  address: "1359 rue Casgrain montreal",
  email: "camille@gmail.com"
)
camille.avatar.attach(io: File.open("./app/assets/images/storage/camillepic.jpeg"), filename: "camillepic.jpeg")
camille.image.attach(io: File.open("./app/assets/images/storage/cover.jpg"), filename: "cover.jpg")
camille.save!

ap = User.create!(
  name: "John",
  surname: "90",
  password: "password123",
  address: "1339 rue Casgrain montreal",
  email: "john@gmail.com"
)
ap.avatar.attach(io: File.open("./app/assets/images/storage/pxxpic.jpg"), filename: "pxxpic.jpg")
ap.image.attach(io: File.open("./app/assets/images/storage/pxximg.jpeg"), filename: "pxximg.jpeg")
ap.save!

marteen = User.create!(
  name: "Marteen",
  surname: "Deckers",
  password: "password123",
  address: "1339 rue Hutchison montreal",
  email: "marteen@gmail.com"
)
marteen.avatar.attach(io: File.open("./app/assets/images/storage/martinpic.jpeg"), filename: "martinpic.jpeg")
marteen.image.attach(io: File.open("./app/assets/images/storage/martinimg.jpeg"), filename: "martinimg.jpeg")
marteen.save!

benjamin = User.create!(
  name: "Benjamin",
  surname: "Marquis",
  bio: "I came to Montreal a couple of years ago to study sociology. After graduating I became a digital marketing specialist and web analyst. I started learning JavaScript then Python to interact with the data I was exposed to. I found that building stuff suited my pragmatic profile and decided to push it further!",
  address: "5417 rue saint dominique montreal",
  email: "bmarquiscom@gmail.com",
  password: "benjamin23"
)
benjamin.avatar.attach(io: File.open("./app/assets/images/storage/profile.jpeg"), filename: "profile.jpeg")
benjamin.image.attach(io: File.open("./app/assets/images/storage/bjcover.jpg"), filename: "bjcover.jpg")
benjamin.save!

jean = User.create!(
  name: "Jean",
  surname: "Blanchard",
  bio: "I just graduated from a digital marketing&communication degree and I've been working for the past year for Caterpillar, a industrial company equipment, mostly in Africa.",
  address: "6417 rue hutchison montreal",
  email: "jean@gmail.com",
  password: "password123"
)
jean.avatar.attach(io: File.open("./app/assets/images/storage/jeanpic.jpeg"), filename: "jeanpic.jpeg")
jean.image.attach(io: File.open("./app/assets/images/storage/jeancover.jpg"), filename: "jeancover.jpg")
jean.save!

p "Users created!"
