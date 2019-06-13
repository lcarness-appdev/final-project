# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    industries = Industry.create([{name: "Agriculture & Forestry"},[{name: "Business & Information"},[{name: "Construction"},[{name: "Education"},[{name: "Finance & Insurance"},[{name: "Food"},[{name: "Gaming"},[{name: "Health Services"},[{name: "Motor Vehicle"},[{name: "Natural Resources"},[{name: "Other"},[{name: "Real Estate"},[{name: "Transportation"}])
    countries = Country.create([{name: "Italy"},{name: "France"},{name: "Germany"},{name: "Spain"},{name: "United States"},{name: "India"},{name: "Japan"},{name: "China"},{name: "Canada"},{name: "Other"}]})
    AdminUser.create(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
