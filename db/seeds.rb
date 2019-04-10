# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: "rbau", email: "rbauer@gmailer.ego")
User.create(username: "amill", email: "mymail@yourmail.com")
Category.create(name: "Programming")
Category.create(name: "World Domination")
Category.create(name: "Tea")
Category.create(name: "Lawn Sports")
