# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Location.destroy_all
User.destroy_all
Pet.destroy_all
Petxpert.destroy_all
Service.destroy_all
Petxpert.destroy_all
Appointment.destroy_all

wash = Location.create!(city: "Washington, DC")
nyc = Location.create!(city: "New York, NY")
buff = Location.create!(city: "Buffalo, NY")

lauren = User.create!(name: "Lauren", username: "LDawg", address: "E Capitol St.", photo: nil, location: wash, password: "lauren")
ryan = User.create!(name: "Ryan", username: "RGuy", address: "Frederick Douglass", photo: nil, location: nyc, password: "ryan")
eileen = User.create!(name: "Eileen", username: "EE", address: "F. Creek", photo: nil, location: buff, password: "eileen")

tyrion = Pet.create!(name: "Tyrion", species: "cat", age: 5, photo: nil, description: "Chubby but lovely", user: lauren)
sam_cat = Pet.create!(name: "Samwell", species: "cat", age: 5, photo: nil, description: "Quirky yet adorable", user: lauren)
hazel = Pet.create!(name: "Hazel", species: "dog", age: 6, photo: nil, description: "The perfect lady", user: ryan)
josie = Pet.create!(name: "Josie", species: "dog", age: 10, photo: nil, description: "The best dog.", user: eileen)

chris = Petxpert.create!(name: "Chris", username: "JazzDude", photo: nil, description: "Give me them cats.  Dogs are ok, too.", location: wash, password: "chris")
audrey = Petxpert.create!(name: "Audrey", username: "Audgepodge", photo: nil, description: "I'm the nicest person ever.", location: buff, password: "audrey")
jacquie = Petxpert.create!(name: "Jacquie", username: "Jax&Chuck", photo: nil, description: "I love animals more than I love eating.", location: wash, password: "jacquie")
sam = Petxpert.create!(name: "Sam", username: "Quiggs", photo: nil, description: "I'm as relaxed as you want your dog to be.", location: nyc, password: "sam")

grooming = Service.create!(name: "grooming", price: 30.00, description: "Get ready to lose some hair!")
walk = Service.create(name: "walk", price: 20.00, description: "Who's ready to move their leggies?!")
home_visit = Service.create(name: "home visit", price: 25.00, description: "Perfect for the lonely pet that needs some extra TLC.")

PetxpertService.create(petxpert: chris, service: grooming)
PetxpertService.create(petxpert: chris, service: walk)
PetxpertService.create(petxpert: audrey, service: home_visit)
PetxpertService.create(petxpert: jacquie, service: walk)
PetxpertService.create(petxpert: jacquie, service: home_visit)
PetxpertService.create(petxpert: sam, service: walk)
PetxpertService.create(petxpert: sam, service: grooming)

Appointment.create(pet: tyrion, petxpert: chris, service: grooming, appt_time: "2020-03-11 15:00:00")
Appointment.create(pet: hazel, petxpert: sam, service: walk, appt_time: "2020-06-18 8:00:00")
Appointment.create(pet: josie, petxpert: jacquie, service: walk, appt_time: "2020-07-04 12:30:00")
