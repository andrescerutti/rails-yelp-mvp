# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  '01 43 54 23 31',
    category: 'italian'
  },
  {
    name:         'McDonals',
    address:      '734 Boundary St, London E2 7JE',
    phone_number:  '01 43 54 23 31',
    category: 'chinese'
  },
  {
    name:         'Subway',
    address:      '324 Boundary St, London E2 7JE',
    phone_number:  '01 43 54 23 31',
    category: 'japanese'
  },
  {
    name:         'Burguer King',
    address:      '987 Boundary St, London E2 7JE',
    phone_number:  '01 43 54 23 31',
    category: 'french'
  },
  {
    name:         'Pizzerias',
    address:      '467 Boundary St, London E2 7JE',
    phone_number:  '01 43 54 23 31',
    category: 'belgian'
  }
]


restaurants_attributes.each do |r|

  rest = Restaurant.create!(r)

  puts "creating reviews"
  10.times do
    Review.create!(
          content: Faker::Restaurant.review,
          rating: rand(0..5),
          restaurant: rest
    )
  end

end
puts 'Finished!'




puts "Finish"
