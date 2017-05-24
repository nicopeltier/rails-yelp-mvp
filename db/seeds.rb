# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
restaurants = Restaurant.create([
  { name: 'Star Wars', address: '25 rue des champs' , phone_number: '04 23 38 29 30', category: 'french' },
  { name: 'La Tour d argent', address: '12 rue edith cavell' , phone_number: '04 89 38 29 30', category: 'japanese' },
  { name: 'Leon', address: '25 rue des petits pois' , phone_number: '04 65 38 29 30', category: 'belgian' },
  { name: 'mcdo', address: '25 rue des filets' , phone_number: '05 23 38 29 30', category: 'french' },
  { name: 'mikado', address: '25 rue des japs' , phone_number: '04 98 38 29 30', category: 'chinese' },
  ])
