# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Product.create(name:"Tesla 1",description:  "The tesla 1 product", price: 900,stock: 30,is_active: true)
# Product.create(name:"Tesla 2",description:  "The tesla 2 product", price: 9000,stock: 300,is_active: true)

# Cleaning of the database 
Product.destroy_all  


10.times do
Product.create(
    name: Faker:: Commerce.product_name ,
    description: "This is samle description ." ,
    price: Faker:: Commerce.price(range: 1000..30000) ,
    stock: rand(10..30) ,
    is_active: [true, false].sample  # sample will give one random value from the array 
)

end