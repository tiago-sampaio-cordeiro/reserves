=begin
user = []

10.times do
  user << User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.cell_phone
  )
end

favorite = []

10.times do
  favorite << Favorite.create!(
    favorite_restaurant_name: Faker::Restaurant.name,
    user_id: 1
  )
end

dish = []

10.times do
  dish << Dish.create!(
    dish_name:Faker::Food.dish,
    price:Faker::Number.decimal(l_digits: 2)
  )
end

restaurant = []

10.times do
  restaurant << Restaurant.create!(
    restaurant_name:Faker::Restaurant.name,
    address:Faker::Address.full_address
  )
end

table = []

10.times do
  table << Table.create!(
    number_table:Faker::Number.digit
  )
end

tab = []

10.times do
  tab << Tab.create!(
    total:Faker::Number.decimal(l_digits: 2),
    table_id: 1
    )
end
=end



