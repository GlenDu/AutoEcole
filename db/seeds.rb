# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

def user_create
  6.times do
    User.create!(email: Faker::Internet.email, password: "aaaaaa", admin: false)
  end
end

def teacher_create
  (1..2).each do |i|
    Teacher.create(first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      phone_nb: "062",
      description: "prof auto",
      user_id: User(parms[id: i]))
  end
end

def student_create
  (3..6).each do |i|
    Student.create(first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      phone_nb: "061111",
      postal_code: "2000",
      user_id: User(parms[id: i]))
  end
end

def destroy_all_models
  Timeslot.destroy_all
  Calendar.destroy_all
  Teacher.destroy_all
  Student.destroy_all
  User.destroy_all
end

destroy_all_models
user_create
teacher_create
student_create
