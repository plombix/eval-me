# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Allowed.delete_all
User.delete_all
Allowed.create!(email: "plombix@gmail.com")
Allowed.create!(email: "test@test.com")
User.create!(email:"plombix@gmail.com", password: "Soul66k!", password_confirmation: "Soul66k!")
User.create!(email:"test@test.com", password: "password", password_confirmation: "password")
