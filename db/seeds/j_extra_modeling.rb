kristyna = User.find_by_name("Kristyna")
kristyna.events = []

yatai = Event.find_by_name("YATAI - Japan Street Food Celebration")
yatai.start_date = DateTime.parse("7th september 2019")
yatai.end_date = DateTime.parse("8th september 2019")
yatai.users << User.find_by_name("Benjamin")
yatai.users << User.find_by_name("Camille")
yatai.users << User.find_by_name("Kristyna")
yatai.save!

alexandraplatz = Event.find_by_name("Mile-Ex Alexandraplatz Night Market")
alexandraplatz.start_date = DateTime.parse("14th september 2019")
alexandraplatz.end_date = DateTime.parse("15th september 2019")
alexandraplatz.users = []
alexandraplatz.users << User.find_by_name("Kristyna")
alexandraplatz.save!

kristyna.events <<  Event.find_by_name("THIERRY MUGLER - Couturissime")
kristyna.events <<  Event.find_by_name("ENVIRONMENT MUSEUM")
kristyna.events <<  Event.find_by_name("FIESTA OLYMPICA")
kristyna.save!

p "Seed modeling done!"
