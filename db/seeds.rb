user = []

10.times do
  user << User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.cell_phone,
  )
end

restaurant = []

10.times do
  restaurant << Restaurant.create!(
    restaurant_name:Faker::Restaurant.name,
    address:Faker::Address.full_address
  )
end


favorite = []

10.times do
  favorite << Favorite.create!(
    user_id: user.sample.id,
    restaurant_id: restaurant.sample.id
  )
end

dish = []

10.times do
  dish << Dish.create!(
    dish_name:Faker::Food.dish,
    price:Faker::Number.decimal(l_digits: 2),
    restaurant_id: restaurant.sample.id
  )
end

table = []

10.times do
  table << Table.create!(
    number_table:Faker::Number.digit,
    restaurant_id: restaurant.sample.id
  )
end

tab = []

10.times do
  tab << Tab.create!(
    total:Faker::Number.decimal(l_digits: 2),
    table_id: table.sample.id,
    dish_id: dish.sample.id
    )
end

reservations = []

10.times do
  reservations << Reservation.create!(
    user_id:user.sample.id,
    restaurant_id:restaurant.sample.id
  )
end






