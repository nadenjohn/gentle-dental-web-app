# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "🌱 Seeding spices..."

puts "Deleting old data..."


# Appointment.destroy_all
# AppointmentSlot.destroy_all




# u1 = User.create(name: 'Louis', password: "password")
# u2 = User.create(name: 'Grace', password: "password")
# u3 = User.create(name:'Ted', password: "password")
# u4 = User.create(name:'Bill', password: "password")
# u5 = User.create(name:'Ridly', password: "password")
# u6 = User.create(name:'Bishop', password: "password")

# p1 = Patient.create(name: "Craig", password: "password")

# d1 = Dentist.create(name: 'Dr. Steve Martin', specialty: 'Root canals', photo: 'https://mickeyblog.com/wp-content/uploads/2020/02/Little-Shop-of-Horrors.jpg')
# d2 = Dentist.create(name: 'Dr. Julia Harris', specialty: 'Braces', photo: 'https://www.bournemouthecho.co.uk/resources/images/1726899/?type=responsive-gallery')
# d3 = Dentist.create(name: 'Dr. Tim Whatley', specialty: 'Cleaning', photo: 'https://mapsaboutnothing.files.wordpress.com/2013/04/819-yada-yada1.png')
a1 = Appointment.create(date: "Monday, June 1, 2022", time: '8:00am', duration: 60, user_id: 7, dentist_id: 1)
a2 = Appointment.create(date: "Monday, June 1, 2022", time: '9:00am', duration: 60, user_id: 7, dentist_id: 2)
a3 = Appointment.create(date: "Monday, June 1, 2022", time: '10:00am', duration: 60, user_id: 7, dentist_id: 3)
a4 = Appointment.create(date: "Monday, June 1, 2022", time: '11:00am', duration: 60, user_id: 7, dentist_id: 4)


a1 = AppointmentSlot.create!(date: "Monday, June 1, 2022", time: '8:00am', duration: 60, dentist_id: 1)
a2 = AppointmentSlot.create!(date: "Monday, June 1, 2022", time: '9:00am', duration: 60, dentist_id: 1)
a3 = AppointmentSlot.create!(date: "Monday, June 1, 2022", time: '10:00am', duration: 60, dentist_id: 1)
a4 = AppointmentSlot.create!(date: "Monday, June 1, 2022", time: '11:00am', duration: 60, dentist_id: 1)

a5 = AppointmentSlot.create!(date: "Monday, June 1, 2022", time: '1:00pm', duration: 60, dentist_id: 1)
a6 = AppointmentSlot.create!(date: "Monday, June 1, 2022", time: '2:00pm', duration: 60, dentist_id: 1)
a7 = AppointmentSlot.create!(date: "Monday, June 1, 2022", time: '3:00pm', duration: 60, dentist_id: 1)
a8 = AppointmentSlot.create!(date: "Monday, June 1, 2022", time: '4:00pm', duration: 60, dentist_id: 1)
a9 = AppointmentSlot.create!(date: "Monday, June 1, 2022", time: '8:00am', duration: 60, dentist_id: 2)
a10 = AppointmentSlot.create!(date: "Monday, June 1, 2022", time: '9:00am', duration: 60, dentist_id: 2)
a11 = AppointmentSlot.create!(date: "Monday, June 1, 2022", time: '10:00am', duration: 60, dentist_id: 2)
a12 = AppointmentSlot.create!(date: "Monday, June 1, 2022", time: '11:00am', duration: 60, dentist_id: 2)

a13 = AppointmentSlot.create!(date: "Monday, June 1, 2022", time: '1:00pm', duration: 60, dentist_id: 2)
a14 = AppointmentSlot.create!(date: "Monday, June 1, 2022", time: '2:00pm', duration: 60, dentist_id: 2)
a15 = AppointmentSlot.create!(date: "Monday, June 1, 2022", time: '3:00pm', duration: 60, dentist_id: 2)
a16 = AppointmentSlot.create!(date: "Monday, June 1, 2022", time: '4:00pm', duration: 60, dentist_id: 2)
a17 = AppointmentSlot.create!(date: "Monday, June 1, 2022", time: '8:00am', duration: 60, dentist_id: 3)
a18 = AppointmentSlot.create!(date: "Monday, June 1, 2022", time: '9:00am', duration: 60, dentist_id: 3)
a19 = AppointmentSlot.create!(date: "Monday, June 1, 2022", time: '10:00am', duration: 60, dentist_id: 3)
a20 = AppointmentSlot.create!(date: "Monday, June 1, 2022", time: '11:00am', duration: 60, dentist_id: 3)

a21 = AppointmentSlot.create!(date: "Monday, June 1, 2022", time: '1:00pm', duration: 60, dentist_id: 3)
a22 = AppointmentSlot.create!(date: "Monday, June 1, 2022", time: '2:00pm', duration: 60, dentist_id: 3)
a23 = AppointmentSlot.create!(date: "Monday, June 1, 2022", time: '3:00pm', duration: 60, dentist_id: 3)
a24 = AppointmentSlot.create!(date: "Monday, June 1, 2022", time: '4:00pm', duration: 60, dentist_id: 3)
