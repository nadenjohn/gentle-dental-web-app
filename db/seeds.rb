# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "🌱 Seeding spices..."

puts "Deleting old data..."


Appointment.destroy_all



u1 = User.create(name: 'Louis', password: "password")
u2 = User.create(name: 'Grace', password: "password")
u3 = User.create(name:'Ted', password: "password")
u4 = User.create(name:'Bill', password: "password")
u5 = User.create(name:'Ridly', password: "password")
u6 = User.create(name:'Bishop', password: "password")

p1 = Patient.create(name: "Craig", password: "password")

d1 = Dentist.create(name: 'George', specialty: 'Root canals', photo: 'https://cdn.westseattleblog.com/blog/wp-content/uploads/2019/01/dentistparty4-1.jpg')
d2 = Dentist.create(name: 'Tom', specialty: 'Cleaning', photo: 'https://cdn.westseattleblog.com/blog/wp-content/uploads/2019/01/dentistparty4-1.jpg')
d3 = Dentist.create(name: 'Sally', specialty: 'Braces', photo: 'https://www.findatopdoc.com/doctor_images/8/8a/304085.jpg?v=7b87')
d4 = Dentist.create(name: 'Bill', specialty: 'Root canals', photo: 'https://cdn.westseattleblog.com/blog/wp-content/uploads/2019/01/dentistparty4-1.jpg')

a1 = Appointment.create!(date: "June 1, 2022", time: '9:00am', duration: 30, user_id: 1, dentist_id: 45)
a2 = Appointment.create!(date: "June 2, 2022", time: '9:00am', duration: 30, user_id: 7, dentist_id: 45)
a3 = Appointment.create!(date: "June 3, 2022", time: '9:00am', duration: 30, user_id: 7, dentist_id: 45)
a4 = Appointment.create!(date: "June 4, 2022", time: '9:00am', duration: 30, user_id: 7, dentist_id: 45)
a5 = Appointment.create!(date: "June 5, 2022", time: '9:00am', duration: 30, user_id: 7, dentist_id: 45)
a6 = Appointment.create!(date: "June 6, 2022", time: '9:00am', duration: 30, user_id: 7, dentist_id: 45)