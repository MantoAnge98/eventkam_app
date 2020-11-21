# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([name: "admin", email: "admin@gmail.com", avatar: "image.png", password: "ange1998", password_confirmation: "ange1998", admin: true])

# 20.times do |n|
#   name = Faker::Name.unique.name
#   email = Faker::Internet.email
#   avatar = Faker::Avatar.image
#   password = "ange1998"
#   User.create!(name: name,
#                email: email,
#                avatar: avatar,
#                password: password,
#                password_confirmation: password
#                )
# end

#Event.create([title: "Title 1", content:"Content 1", image: "image.png", date_start:"2020-11-24", date_end: "2020-11-29", organizer_id: 35])
