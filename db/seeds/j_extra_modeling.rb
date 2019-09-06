kristyna = User.find_by_name("Kristyna")
kristyna.events = []

yatai = Event.find_by_name("YATAI - Japan Street Food Celebration")
yatai.start_date = DateTime.parse("7th september 2019")
yatai.end_date = DateTime.parse("8th september 2019")
yatai.users << User.find_by_name("Benjamin")
yatai.users << User.find_by_name("Camille")
yatai.users << User.find_by_name("Kristyna")
yatai.save!

alexandraplatz = Event.find_by_name("MILE EX - Alexandraplatz Night Market")
alexandraplatz.start_date = DateTime.parse("14th september 2019")
alexandraplatz.end_date = DateTime.parse("15th september 2019")
alexandraplatz.users = []
alexandraplatz.users << User.find_by_name("Kristyna")
alexandraplatz.description = "There’s something bittersweet about witnessing the development of an emerging neighbourhood. Too often, we’re only privy to our city’s secret spots once they’re out of the bag and crowded, or we want to hold on to them before they are. Mile Ex is currently in the midst of its transformation, and still has that twinge of excitement and mystery to it."
alexandraplatz.save!

kristyna.events <<  Event.find_by_name("THIERRY MUGLER - Couturissime")
kristyna.events <<  Event.find_by_name("ENVIRONMENT MUSEUM")
kristyna.events <<  Event.find_by_name("FIESTA OLYMPICA")
kristyna.save!

p "Seed modeling done!"
