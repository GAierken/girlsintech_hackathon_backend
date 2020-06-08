# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroy former seeds"
User.destroy_all
Appointment.destroy_all

puts "Making new seed"

clients = [
    {
        first_name: "Emily",
        last_name: "Chen",
        username: "emily",
        email: "emily@test.com",
        password_digest: "1234",
        is_volunteer: false
    },
    {
        first_name: "Annie",
        last_name: "Liu",
        username: "annie",
        email: "annie@test.com",
        password_digest: "1234",
        is_volunteer: false
    }
]

volunteers =[
    {
        first_name: "Hannah",
        last_name: "Chen",
        username: "hannah",
        email: "hannah@test.com",
        password_digest: "1234",
        is_volunteer: true,
        credit: 2,
        average_volunteer_rating: 4.8
    },
    {
        first_name: "Dominic",
        last_name: "Chu",
        username: "dom",
        email: "dom@test.com",
        password_digest: "1234",
        is_volunteer: true,
        credit: 2,
        average_volunteer_rating: 4.8
    }

]

puts "Creating clients"

User.create!(clients)

puts "Creating volunteers"
User.create!(volunteers)

puts "Creating Appointments"
Appointment.create!(client: User.first, volunteer: User.last, apoint_date: "02/23/2020", rating:4)
Appointment.create!(client: User.second, volunteer: User.last, apoint_date: "03/28/2020", rating:3)

puts "Done"