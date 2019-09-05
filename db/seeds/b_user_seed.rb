# User.create!(
#   name: "admin",
#   surname: "admin",
#   password: "password123",
#   address: "1354 rue Casgrain montreal",
#   email: "admin@gmail.com",
#   admin: true
# )

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

# ap = User.create!(
#   name: "John",
#   surname: "90",
#   password: "password123",
#   address: "1339 rue Casgrain montreal",
#   email: "john@gmail.com"
# )
# ap.avatar.attach(io: File.open("./app/assets/images/storage/pxxpic.jpg"), filename: "pxxpic.jpg")
# ap.image.attach(io: File.open("./app/assets/images/storage/pxximg.jpeg"), filename: "pxximg.jpeg")
# ap.save!

# marteen = User.create!(
#   name: "Marteen",
#   surname: "Deckers",
#   password: "password123",
#   address: "1339 rue Hutchison montreal",
#   email: "marteen@gmail.com"
# )
# marteen.avatar.attach(io: File.open("./app/assets/images/storage/martinpic.jpeg"), filename: "martinpic.jpeg")
# marteen.image.attach(io: File.open("./app/assets/images/storage/martinimg.jpeg"), filename: "martinimg.jpeg")
# marteen.save!

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

alma = User.create!(
  name: "Alma",
  surname: "Mamaradlo",
  bio: "I was always interested in fashion and technology but I took the creative path. After 15 years in the Fashion industry, I am ready to take a new challenge.",
  address: "6417 rue hutchison montreal",
  email: "alma@gmail.com",
  password: "password123"
)
alma.avatar.attach(io: File.open("./app/assets/images/storage/almapic.jpg"), filename: "almapic.jpg")
# alma.image.attach(io: File.open("./app/assets/images/storage/jeancover.jpg"), filename: "almacover.jpg")
alma.save!


cat = User.create!(
  name: "Caitlin",
  surname: "Snyder",
  bio: "Background in humanitarian information management--excited to join Le Wagon Batch 281 to merge my existing experiences with software development!",
  address: "6417 rue hutchison montreal",
  email: "cat@gmail.com",
  password: "password123"
)
cat.avatar.attach(io: File.open("./app/assets/images/storage/catpic.jpg"), filename: "catpic.jpg")
# alma.image.attach(io: File.open("./app/assets/images/storage/jeancover.jpg"), filename: "almacover.jpg")
cat.save!

courtney = User.create!(
  name: "Courtney",
  surname: "Handy",
  bio: "Working as a communications director exposed me to startups and digital projects which piqued my interest in coding. Excited to be part of Le Wagon!",
  address: "6417 rue hutchison montreal",
  email: "courtney@gmail.com",
  password: "password123"
)
courtney.avatar.attach(io: File.open("./app/assets/images/storage/courtneypic.jpeg"), filename: "courtneypic.jpeg")
# courtney.image.attach(io: File.open("./app/assets/images/storage/jeancover.jpg"), filename: "courtneycover.jpg")
courtney.save!

fred = User.create!(
  name: "Frederic",
  surname: "Thomas",
  bio: "Change management specialist, manager, teacher and lecturer. Want to be part of the digital transformation from the inside! ;-) Super motivated to learn how to code!",
  address: "6417 rue hutchison montreal",
  email: "fred@gmail.com",
  password: "password123"
)
fred.avatar.attach(io: File.open("./app/assets/images/storage/fredthompic.jpg"), filename: "fredthompic.jpg")
# fred.image.attach(io: File.open("./app/assets/images/storage/jeancover.jpg"), filename: "fredcover.jpg")
fred.save!

chen = User.create!(
  name: "Chen",
  surname: "Huiran",
  bio: "I want to learn coding to become a semi-technical founder. Previously, I was working on my own delivery startup called mokey.co in LA.",
  address: "6417 rue hutchison montreal",
  email: "chen@gmail.com",
  password: "password123"
)
chen.avatar.attach(io: File.open("./app/assets/images/storage/chenpic.jpg"), filename: "chenpic.jpg")
# chen.image.attach(io: File.open("./app/assets/images/storage/jeancover.jpg"), filename: "chencover.jpg")
chen.save!

katharina = User.create!(
  name: "Katharina",
  surname: "Egler",
  bio: "I work in management consulting/ Finance in Germany. I'm currently planning my next career steps and would like to work on some own (start up) ideas.",
  address: "6417 rue hutchison montreal",
  email: "katharina@gmail.com",
  password: "password123"
)
katharina.avatar.attach(io: File.open("./app/assets/images/storage/khatarinapic.jpeg"), filename: "khatarinapic.jpeg")
# katharina.image.attach(io: File.open("./app/assets/images/storage/khatarinapic.jpegg"), filename: "katharinacover.jpg")
katharina.save!

khaoula = User.create!(
  name: "Khaoula",
  surname: "Zghoumi",
  bio: "With a Bachelor's in Health studies, I worked in Health/Hospital management. I have no previous coding experience but I am excited to learn!",
  address: "6417 rue hutchison montreal",
  email: "khaoula@gmail.com",
  password: "password123"
)
khaoula.avatar.attach(io: File.open("./app/assets/images/storage/khaoula.jpeg"), filename: "khaoula.jpeg")
# khaoula.image.attach(io: File.open("./app/assets/images/storage/jeancover.jpg"), filename: "khaoulacover.jpg")
khaoula.save!

lea = User.create!(
  name: "Lea",
  surname: "Pontet",
  bio: "It is time to assume I am a geek! After 4 years working in the Marketing and Sales field in different countries (France, Mexico & Canada) for different companies, I am planning to learn coding/programming in order to jump into the tech/startup ecosystem of Montreal. Can't wait to start creating tools!",
  address: "6417 rue hutchison montreal",
  email: "lea@gmail.com",
  password: "password123"
)
lea.avatar.attach(io: File.open("./app/assets/images/storage/leapic.png"), filename: "leapic.png")
# lea.image.attach(io: File.open("./app/assets/images/storage/leacover.jpg"), filename: "leacover.jpg")
lea.save!

louis = User.create!(
  name: "Louis-Olivier",
  surname: "Pelletier",
  bio: "I worked in marketing and communication for a couple of years as a freelancer. Here's my portfolio : www.louisolivierpelletier.com. I own a company, www.clubdimpro.com, which presents shows and offers improv courses. I managed 300+ events a year. And I want to learn to code to automize a bunch of my daily task.",
  address: "6417 rue hutchison montreal",
  email: "louis@gmail.com",
  password: "password123"
)
louis.avatar.attach(io: File.open("./app/assets/images/storage/louispic.png"), filename: "louispic.png")
# louis.image.attach(io: File.open("./app/assets/images/storage/louiscover.jpg"), filename: "louiscover.jpg")
louis.save!

luc = User.create!(
  name: "Luc",
  surname: "Mosser",
  bio: "I'm Luc, a french student with a background in biology, who comes to La wagon Montreal to learn to code and who eventually wants to become an entrepreneur.",
  address: "6417 rue hutchison montreal",
  email: "luc@gmail.com",
  password: "password123"
)
luc.avatar.attach(io: File.open("./app/assets/images/storage/lucpic.jpeg"), filename: "lucpic.jpeg")
# luc.image.attach(io: File.open("./app/assets/images/storage/luccover.jpg"), filename: "luccover.jpg")
luc.save!

leo = User.create!(
  name: "Leo",
  surname: "Beltran",
  bio: "I want to learn code because i have ideas for app but i don't know how to create them. After leWagon i don't know exactly what i want to do yet...I either go back to France to finish my licence or I stay in Montreal and work here to have more experience in programming and learn even more because in the long term I want to be an entrepreneur.",
  address: "6417 rue hutchison montreal",
  email: "leo@gmail.com",
  password: "password123"
)
leo.avatar.attach(io: File.open("./app/assets/images/storage/leopic.jpg"), filename: "leopic.jpg")
# leo.image.attach(io: File.open("./app/assets/images/storage/leocover.jpg"), filename: "leocover.jpg")
leo.save!

michael = User.create!(
  name: "Michael",
  surname: "Jun-Dundas",
  bio: "Degree in Civil Engineering. After working for a couple of years in commercial construction industry i decided that it wasn't really for me and i was much more interested in the technology world. Hoping to learn enough to become a developer/freelance developer and begin my life in coding. :)",
  address: "6417 rue hutchison montreal",
  email: "michael@gmail.com",
  password: "password123"
)
michael.avatar.attach(io: File.open("./app/assets/images/storage/michaelpic.jpeg"), filename: "michaelpic.jpeg")
# michael.image.attach(io: File.open("./app/assets/images/storage/michaelcover.jpg"), filename: "michaelcover.jpg")
michael.save!

nacera = User.create!(
  name: "Nacera",
  surname: "Hammid",
  bio: "I am on the way of being a web developer, I have a computer science background but less coding experience I would like to learn coding skills in order to achieve my goals",
  address: "6417 rue hutchison montreal",
  email: "nacera@gmail.com",
  password: "password123"
)
nacera.avatar.attach(io: File.open("./app/assets/images/storage/nacerapic.jpg"), filename: "nacerapic.jpg")
# nacera.image.attach(io: File.open("./app/assets/images/storage/naceracover.jpg"), filename: "naceracover.jpg")
nacera.save!

nicolas = User.create!(
  name: "Nicolas",
  surname: "Fraisse",
  bio: "Before entering Le Wagon I had some coding basics but not enough to work on real-world projects. After the bootcamp I would be interested in freelancing, as my university studies (B.B.A.) give me a lot of free time that I would like to spend wisely!",
  address: "6417 rue hutchison montreal",
  email: "nicolas@gmail.com",
  password: "password123"
)
nicolas.avatar.attach(io: File.open("./app/assets/images/storage/nicolaspic.jpg"), filename: "nicolaspic.jpeg")
# nicolas.image.attach(io: File.open("./app/assets/images/storage/nicolascover.jpg"), filename: "nicolascover.jpg")
nicolas.save!

perrin = User.create!(
  name: "Perrin",
  surname: "Bryson",
  bio: "I previously worked in Marketing and Events for an IT company in Ottawa. I joined Le wagon to expand my coding skills and to start a new career. I want to get some experience so some day I can start my own company.",
  address: "6417 rue hutchison montreal",
  email: "perrin@gmail.com",
  password: "password123"
)
perrin.avatar.attach(io: File.open("./app/assets/images/storage/perrinpic.jpeg"), filename: "perrinpic.jpeg")
# perrin.image.attach(io: File.open("./app/assets/images/storage/perrincover.jpg"), filename: "perrincover.jpg")
perrin.save!

sam = User.create!(
  name: "Samuel",
  surname: "M.-Morin",
  bio: "Teacher, traveler, student of anything and everything... or at least I try to :) Tons of idea and they all need coding, so here I am. I came here to learn the universal language of the future and to acquire the necessary skills for my projects to move forward. Above all, I'm here to help shape the world of tomorrow! Dream big or go home!!!",
  address: "6417 rue hutchison montreal",
  email: "sam@gmail.com",
  password: "password123"
)
sam.avatar.attach(io: File.open("./app/assets/images/storage/samiuelpic.jpg"), filename: "ssamiuelpic.jpg")
# sam.image.attach(io: File.open("./app/assets/images/storage/samcover.jpg"), filename: "samcover.jpg")
sam.save!

seong = User.create!(
  name: "Seong",
  surname: "Park",
  bio: "Learning to program to become a full stack developer. Previously learned petroleum engineering in university. A student at Le Wagon Montreal.",
  address: "6417 rue hutchison montreal",
  email: "seong@gmail.com",
  password: "password123"
)
seong.avatar.attach(io: File.open("./app/assets/images/storage/seongpic.jpeg"), filename: "seongpic.jpeg")
# seong.image.attach(io: File.open("./app/assets/images/storage/seongcover.jpg"), filename: "seongcover.jpg")
seong.save!

simon = User.create!(
  name: "Simon",
  surname: "Ravary",
  bio: "Office Manager in a Software company with a B.A. in Film Studies and a passion for Graphic Design, I decided to enhance by skillsets by learning Code to implement my passion and become a Fullstack Web Developer.",
  address: "6417 rue hutchison montreal",
  email: "simon@gmail.com",
  password: "password123"
)
simon.avatar.attach(io: File.open("./app/assets/images/storage/simonpic.jpg"), filename: "simonpic.jpg")
# simon.image.attach(io: File.open("./app/assets/images/storage/simoncover.jpg"), filename: "simoncover.jpg")
simon.save!

younes = User.create!(
  name: "Younes",
  surname: "Kamel",
  bio: "I have a bachelors degree in Law and Business and I would like to start my own business ! Looking forward to working with interesting people and learning to code !",
  address: "6417 rue hutchison montreal",
  email: "younes@gmail.com",
  password: "password123"
)
younes.avatar.attach(io: File.open("./app/assets/images/storage/younespic.jpeg"), filename: "younespic.jpeg")
# younes.image.attach(io: File.open("./app/assets/images/storage/younescover.jpg"), filename: "younescover.jpg")
younes.save!

kristyna = User.create!(
  name: "Kristyna",
  surname: "Dierstein",
  bio: "Ex-marketing manager, who wants to become an entrepreneur. I am having full-stack ambitions but secretly hoping to end up in Web design as this is my big dream :)",
  address: "6417 rue hutchison montreal",
  email: "kristyna@gmail.com",
  password: "password123"
)
kristyna.avatar.attach(io: File.open("./app/assets/images/storage/kristyna.jpg"), filename: "kristyna.jpg")
# kristyna.image.attach(io: File.open("./app/assets/images/storage/kristynacover.jpg"), filename: "kristynacover.jpg")
kristyna.save!

romain = User.create!(
  name: "Romain",
  surname: "Penaruiz",
  bio: "I received my BA in Psychology and minor in Marketing form California State University Long Beach. I'am an International graduate student with cross-culture experience. With some expertise in web development, social media, content marketing, and advertising.",
  address: "6417 rue hutchison montreal",
  email: "romain@gmail.com",
  password: "password123"
)
romain.avatar.attach(io: File.open("./app/assets/images/storage/romain.jpg"), filename: "romain.jpg")
# romain.image.attach(io: File.open("./app/assets/images/storage/romaincover.jpg"), filename: "romaincover.jpg")
romain.save!

alex = User.create!(
  name: "Alexandre",
  surname: "Schmitz",
  bio: "I am a UX designer/full-stack developer who owns a startup in EdTech. I graduated from Le Wagon batch 188.",
  address: "6417 rue hutchison montreal",
  email: "alex@gmail.com",
  password: "password123"
)
alex.avatar.attach(io: File.open("./app/assets/images/storage/alexandrespic.jpeg"), filename: "alexandrespic.jpeg")
# alex.image.attach(io: File.open("./app/assets/images/storage/alexcover.jpg"), filename: "alexcover.jpg")
alex.save!

mg = User.create!(
  name: "Marie-Gabrielle",
  surname: "Ayoub",
  bio: "After co-founding Le Wagon in Montréal, running 4 batches and building an amazing team, now it is time for me to realize one of my deepest aspirations: learn to code with Le Wagon, and think differently. 😄🚀",
  address: "6417 rue hutchison montreal",
  email: "mg@gmail.com",
  password: "password123"
)
mg.avatar.attach(io: File.open("./app/assets/images/storage/mgpic.jpg"), filename: "mgpic.jpg")
# mg.image.attach(io: File.open("./app/assets/images/storage/mgcover.jpg"), filename: "mgcover.jpg")
mg.save!

aline = User.create!(
  name: "Aline",
  surname: "Gasparindo",
  bio: "Community & Events Lead at Le Wagon Montréal",
  address: "6417 rue hutchison montreal",
  email: "aline@gmail.com",
  password: "password123"
)
aline.avatar.attach(io: File.open("./app/assets/images/storage/alinepic.jpg"), filename: "alinepic.jpg")
# aline.image.attach(io: File.open("./app/assets/images/storage/alinecover.jpg"), filename: "alinecover.jpg")
aline.save!

antoine = User.create!(
  name: "Antoine",
  surname: "Ayoub",
  bio: "Co Founder Le Wagon Montréal",
  address: "6417 rue hutchison montreal",
  email: "antoine@gmail.com",
  password: "password123"
)
antoine.avatar.attach(io: File.open("./app/assets/images/storage/antoinepic.jpg"), filename: "antoinepic.jpg")
# aline.image.attach(io: File.open("./app/assets/images/storage/alinecover.jpg"), filename: "alinecover.jpg")
antoine.save!

martin = User.create!(
  name: "Martin",
  surname: "Giannakopoulos",
  bio: "Teacher at Le Wagon Montréal",
  address: "6417 rue hutchison montreal",
  email: "martin@gmail.com",
  password: "password123"
)
martin.avatar.attach(io: File.open("./app/assets/images/storage/martinpic.jpeg"), filename: "martinpic.jpeg")
# martin.image.attach(io: File.open("./app/assets/images/storage/martincover.jpg"), filename: "martincover.jpg")
martin.save!

richard = User.create!(
  name: "Richard",
  surname: "Jarram",
  bio: "Politics & Economics grad from the UK. Spent 2 years working at a startup north of London in mostly marketing & sales roles. Had a moment of clarity after collaborating with developers on a project in which I was exposed to their craft for the first time. At that point I realised 'Hey, I should be doing this!' -- and so I quit my job and did Le Wagon! I'm currently working as a full-stack developer for a startup in Montreal in the crypto-sphere. I also freelance on the side (htttp://www.lailo.io), and of course I like to teach & TA too. Le Wagon changed my life so I want to give back to Le Wagon!",
  address: "6417 rue hutchison montreal",
  email: "richard@gmail.com",
  password: "password123"
)
richard.avatar.attach(io: File.open("./app/assets/images/storage/richardpic.jpg"), filename: "richardpic.jpg")
# richard.image.attach(io: File.open("./app/assets/images/storage/richardcover.jpg"), filename: "richardcover.jpg")
richard.save!

stephane = User.create!(
  name: "Stephane",
  surname: "Lafontaine",
  bio: "I completed the bootcamp last August, and am currently teacher & TA at le Wagon Montreal. I would love to visit other le Wagon as a teacher 🤗 Also working on and looking for freelance contracts.",
  address: "6417 rue hutchison montreal",
  email: "stephane@gmail.com",
  password: "password123"
)
stephane.avatar.attach(io: File.open("./app/assets/images/storage/stephpic.jpeg"), filename: "stephpic.jpeg")
#stephane.image.attach(io: File.open("./app/assets/images/storage/stephanecover.jpg"), filename: "stephanecover.jpg")
stephane.save!

simon = User.create!(
  name: "Simon",
  surname: "Guertin",
  bio: "Born and raised in Montreal, Quebec. 🌅 Summers were spent canoe tripping and winters ski racing on the slopes. 📈 I joined the family business 7 years ago, making me the fourth generation to work in insurance. Club Assurance is a damage insurance brokerage, founded by my father in 1992. As the company grew organically year after year ( more then 100% in the past 5 years) I wore many hats: collector, personal; commercial insurance broker, underwriter, head of the sales department, head of the customer service department and director of operations. 💻 Throughout this path I also worked as a full stack developer for the company. ",
  address: "6417 rue hutchison montreal",
  email: "simong@gmail.com",
  password: "password123"
)
simon.avatar.attach(io: File.open("./app/assets/images/storage/simmonpic.png"), filename: "simmonpic.png")
# simon.image.attach(io: File.open("./app/assets/images/storage/simoncover.jpg"), filename: "simoncover.jpg")
simon.save!

frede = User.create!(
  name: "Frederic",
  surname: "Charest",
  bio: "Born and raised in Montreal, Quebec. 🌅 Summers were spent canoe tripping and winters ski racing on the slopes. 📈 I joined the family business 7 years ago, making me the fourth generation to work in insurance. Club Assurance is a damage insurance brokerage, founded by my father in 1992. As the company grew organically year after year ( more then 100% in the past 5 years) I wore many hats: collector, personal; commercial insurance broker, underwriter, head of the sales department, head of the customer service department and director of operations. 💻 Throughout this path I also worked as a full stack developer for the company. ",
  address: "6417 rue hutchison montreal",
  email: "frede@gmail.com",
  password: "password123"
)
frede.avatar.attach(io: File.open("./app/assets/images/storage/fredcharestpic.jpeg"), filename: "fredcharestpic.jpegg")
# frede.image.attach(io: File.open("./app/assets/images/storage/fredcharestpic.jpeg"), filename: "fredecover.jpg")
frede.save!

johnn = User.create!(
  name: "John",
  surname: "Freeman",
  bio: "I lived in Montreal for most of my life. I completed a social science program at John Abbott College before attending Acadia University for two years between Psychology and Computer Sciences. After my time at Acadia I found it clear that I wasn't a good fit for a traditional University courses due to my ADHD. I took a year off to work various jobs from Tim Horton's to a Dental Surgeon's Assistant. Having attended Le Wagon I found it was a great way of learning coding that better fits my learning style and am now seeking new opportunities in the programming field.",
  address: "6417 rue hutchison montreal",
  email: "johnn@gmail.com",
  password: "password123"
)
johnn.avatar.attach(io: File.open("./app/assets/images/storage/freemanpic.jpg"), filename: "freemanpic.jpg")
# johnn.image.attach(io: File.open("./app/assets/images/storage/johnncover.jpg"), filename: "johnncover.jpg")
johnn.save!

zachary = User.create!(
  name: "Zachary",
  surname: "Gian",
  bio: "Born and raised in Paris and studied Business Management and Information Systems in London, at the University College London. I decided that it was time for me to truly learn how to code. My goal is to get a job as a developer following Le Wagon!",
  address: "6417 rue hutchison montreal",
  email: "zachary@gmail.com",
  password: "password123"
)
zachary.avatar.attach(io: File.open("./app/assets/images/storage/zachapic.jpg"), filename: "zachapic.jpg")
# zachary.image.attach(io: File.open("./app/assets/images/storage/zacharycover.jpg"), filename: "zacharycover.jpg")
zachary.save!

alina = User.create!(
  name: "Alina",
  surname: "Gotcherian",
  bio: "Fresh off batch #242 in Lyon and happy to be a TA in my hometown of Montreal! Before learning how to code, I studied communications, worked in film production, and as a community manager/social media marketer at Ludia, a mobile game studio where I worked closely with game devs. But it was only after taking some time off to visit my ancestral land of Armenia that I decided to change my life and learn to code. I was working in communications at TUMO, a non-profit educational centre where adolescents can learn tech skills for free after school. My job consisted of writing about all the awesome programming projects teens were undertaking. Curious and a bit jealous of the fun they were having, I decided to learn how to code too.",
  address: "6417 rue hutchison montreal",
  email: "alina@gmail.com",
  password: "password123"
)
alina.avatar.attach(io: File.open("./app/assets/images/storage/alinapic.jpeg"), filename: "alinapic.jpeg")
# alina.image.attach(io: File.open("./app/assets/images/storage/alinacover.jpg"), filename: "alinacover.jpg")
alina.save!

laure = User.create!(
  name: "Laure",
  surname: "Duhorane",
  bio: "Fresh off batch #242 in Lyon and happy to be a TA in my hometown of Montreal! Before learning how to code, I studied communications, worked in film production, and as a community manager/social media marketer at Ludia, a mobile game studio where I worked closely with game devs. But it was only after taking some time off to visit my ancestral land of Armenia that I decided to change my life and learn to code. I was working in communications at TUMO, a non-profit educational centre where adolescents can learn tech skills for free after school. My job consisted of writing about all the awesome programming projects teens were undertaking. Curious and a bit jealous of the fun they were having, I decided to learn how to code too.",
  address: "6417 rue hutchison montreal",
  email: "laure@gmail.com",
  password: "password123"
)
laure.avatar.attach(io: File.open("./app/assets/images/storage/laurepic.jpg"), filename: "laurepic.jpg")
# laure.image.attach(io: File.open("./app/assets/images/storage/laurecover.jpg"), filename: "laurecover.jpg")
laure.save!

ben = User.create!(
  name: "Ben",
  surname: "Domingue",
  bio: "I started my own asbestos removal company in 2013 and felt like I needed a change! I enrolled to le Wagon in order to learn more about coding and start a new project",
  address: "6417 rue hutchison montreal",
  email: "ben@gmail.com",
  password: "password123"
)
ben.avatar.attach(io: File.open("./app/assets/images/storage/benpic.jpeg"), filename: "benpic.jpeg")
# ben.image.attach(io: File.open("./app/assets/images/storage/bencover.jpg"), filename: "bencover.jpg")
ben.save!

p "#{User.count} users created!"
