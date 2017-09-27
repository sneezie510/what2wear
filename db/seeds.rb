# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'ffaker'

puts 'Creating 100 fake users...'
100.times do
  user = User.new(
    name:    "#{FFaker::NameNL.first_name_female}, #{Faker::NameNL.last_name}",
    address: "#{FFaker::AddressNL.street_address}, #{FFaker::AddressNL.city}",
    email:  "#{FFaker::Internet.disposable_email}"
  )
  user.save!
end
puts 'Finished!'
