# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Horse.destroy_all

horse_list = [
    [ "Big-Germany", 999, "Frank Ocean", "Bobby Knucs", 1, 5  ],
    [ "Silly-Snag", 12, "Hell Boy", "Bob Dylan", 0, 2  ],
    [ "Dubz", 1, "Bunny", "Buck", 9, 15  ],
    [ "Hell-raiser", 33,  "Greg", "Stich", 4, 8  ],
    [ "Big-OZ", 3,  "Dylan Brown", "Bobby Knucs", 2, 0  ]
  ]
  
horse_list.each do |horse_name, horse_number, jockey, trainer, current_win, current_places|
  Horse.create(horse_name: "#{horse_name}", horse_number: "#{horse_number}", jockey: "#{jockey}", trainer: "#{trainer}", current_win: "#{current_win}", current_places: "#{current_places}")
end

User.destroy_all
users = [
  {
    email: "user1@email.com",
    password: "password"
  },
  {
    email: "user2@email.com",
    password: "password"
  },
  {
    email: "user3@email.com",
    password: "password"
  },
]

User.create!(users)


RaceCourse.destroy_all

raceaddress = [
  {
    race_course_name: "Pickles",
    address: "12 New st"
  },
  {
    race_course_name: "The Park",
    address: "222 old lane"
  },
  {
    race_course_name: "Rugby park",
    address: "22 Footy Lane "
  },
]

RaceCourse.create!(raceaddress)

puts "Races: #{RaceCourse.count}"


# adress_list = [
#     [ "Big-Germany", 999, "Frank Ocean", "Bobby Knucs", 1, 5  ],
#     [ "Silly-Snag", 12, "Hell Boy", "Bob Dylan", 0, 2  ],
#     [ "Dubz", 1, "Bunny", "Buck", 9, 15  ],
#     [ "Hell-raiser", 33,  "Greg", "Stich", 4, 8  ],
#     [ "Big-OZ", 3,  "Dylan Brown", "Bobby Knucs", 2, 0  ]
#   ]
  
# horse_list.each do |horse_name, horse_number, jockey, trainer, current_win, current_places|
#   Horse.create(horse_name: "#{horse_name}", horse_number: "#{horse_number}", jockey: "#{jockey}", trainer: "#{trainer}", current_win: "#{current_win}", current_places: "#{current_places}")
# end





