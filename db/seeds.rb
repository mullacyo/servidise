# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Seed Users

ActiveRecord::Base.transaction do
    
    user = {}
    user['password'] = '123qwe'
    # user['password_confirmation'] = '123qwe'
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

    # Seed Listings
    task = {}
  
    20.times do 
      task['name'] = Faker::Job.title
      task['description'] = Faker::Hipster.sentence
      task['price'] = rand(100..1000)
  
      Task.create(task)
    end

    # Seed Tasks_Users
    tasks_user = {}
    seed_user_id = 0
    20.times do
        tasks_user['user_id'] = seed_user_id
        tasks_user['task_id'] = rand(0..19)
        seed_user_id += 1
        TasksUser.create(tasks_user)
    end
end 

