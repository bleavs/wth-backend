# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  User.create({ username: Faker::HeyArnold.character, password: "1" })
end


runs = Run.create([
  {
  name: "Bridge",
  description: "Over the Williamsburg Bridge",
  distance: "3",
  expected_pace: "7:00",
  start_time: "6pm",
  expected_end_time: "7pm",
  date: "11/6",
  lat: "40.7065543",
  lng: "-73.9575782"
},
{
name: "Medium",
description: "Through Battery Park",
distance: "5",
expected_pace: "8:00",
start_time: "4pm",
expected_end_time: "5pm",
date: "11/7",
lat: "40.7032775",
lng: "-74.01702790000002"
},
{
name: "Long Distance",
description: "Long Slow Run",
distance: "8",
expected_pace: "8:30",
start_time: "2pm",
expected_end_time: "3:30pm",
date: "11/8",
lat: "40.6782259",
lng: "-73.97360429999998"
}

])

 Userrun.create([{user: User.first, run: Run.first, leader: true }])

 Userrun.create([{user: User.first, run: Run.second, leader: true }])

 Userrun.create([{user: User.first, run: Run.third, leader: true }])
