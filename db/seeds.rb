# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Seed Users
user = {}
user['password'] = '123qwe'
# user['password_confirmation'] = '123qwe'

ActiveRecord::Base.transaction do
  20.times do 
    user['first_name'] = Faker::Name.first_name 
    user['last_name'] = Faker::Name.last_name
    user['gender'] = rand(0..1)
    user['phone'] = Faker::PhoneNumber.phone_number
    user['email'] = Faker::Internet.email
    user['city'] = Faker::Address.city
    user['nric'] = rand(0..99999)

    User.create(user)
  end
end 

# Seed Listings
task = {}
uids = []
User.all.each { |u| uids << u.id }

ActiveRecord::Base.transaction do
  20.times do 
    task['name'] = Faker::Job.title
    task['description'] = Faker::Hipster.sentence
    task['price'] = rand(100..1000)

    task['user_id'] = uids.sample

    Task.create(task)
  end
end