require 'ffaker'

User.create!(firstname:  "Admin",
						 lastname: "User",
             email: "admin@works.com",
             password:              "password",
             password_confirmation: "password",
             admin: true)

5.times do |n|
  firstname  = Faker::Name.name
  lastname = Faker::Name.name
  email = "example-#{n+1}@works.com"
  password = "password"
  User.create!(firstname:  firstname,
  						 lastname: lastname,
               email: email,
               password:              password,
               password_confirmation: password)
end


[{name: "Games"}, {name: "Clothes"}, {name: "Music"}].each do |name|
	Category.create!(name)
end

description = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."

[{title: "Super Mario Bros",
	description: description,
	price: 48.89,
	category_id: 1,
	user_id: 1},

	{title: "Tekken",
	description: description,
	price: 48.89,
	category_id: 1,
	user_id: 1},

	{title: "World of Warcraft",
	description: description,
	price: 24.69,
	category_id: 1,
	user_id: 1},

	{title: "Leather Coat",
	description: description,
	price: 48.89,
	category_id: 2,
	user_id: 2},

	{title: "Sports Wear",
	description: description,
	price: 68.49,
	category_id: 2,
	user_id: 3},

	{title: "Sneakers",
	description: description,
	price: 68.49,
	category_id: 2,
	user_id: 4},

	{title: "CD Player",
	description: description,
	price: 48.89,
	category_id: 3,
	user_id: 5},

	{title: "Ultimate Boombox",
	description: description,
	price: 95.89,
	category_id: 3,
	user_id: 2},

	{title: "Castlevania OST",
	description: description,
	price: 68.49,
	category_id: 3,
	user_id: 3},

	{title: "Final Fantasy OST",
	description: description,
	price: 68.49,
	category_id: 3,
	user_id: 5}].each do |product|
	Product.create!(product)
end

[{content: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC",
  rating: 5,
  product_id: 1,
  user_id: 2},

  {content: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC",
  rating: 5,
  product_id: 1,
  user_id: 4},

  {content: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC",
  rating: 3,
  product_id: 2,
  user_id: 2},

  {content: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC",
  rating: 3,
  product_id: 3,
  user_id: 2},

  {content: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC",
  rating: 2,
  product_id: 3,
  user_id: 1},

  {content: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC",
  rating: 2,
  product_id: 4,
  user_id: 2},

  {content: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC",
  rating: 4,
  product_id: 4,
  user_id: 3},


  {content: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC",
  rating: 4,
  product_id: 5,
  user_id: 4},


  {content: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC",
  rating: 5,
  product_id: 6,
  user_id: 5},


  {content: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC",
  rating: 5,
  product_id: 7,
  user_id: 5},


  {content: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC",
  rating: 4,
  product_id: 8,
  user_id: 5},

  {content: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC",
  rating: 4,
  product_id: 8,
  user_id: 2},

  {content: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC",
  rating: 5,
  product_id: 9,
  user_id: 2}
].each do |review|
	Review.create(review)
end