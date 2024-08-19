
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
    user_id: user.sample.id
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
    table_id: table.sample.id
    )
end

favorite_restaurants = []

10.times do
  favorite_restaurants << FavoriteRestaurant.create!(
    favorite_id:favorite.sample.id,
    restaurant_id:restaurant.sample.id
  )
end

reservations = []
=begin
10.times do
  reservations << Reservation.create!(
    user_id:user.sample.id,
    restaurant_id:restaurant.sample.id,
    table_id:table.sample.id
  )
end
=end
tab_dishes = []

10.times do
  tab_dishes << TabDish.create!(
    tab_id:tab.sample.id,
    dish_id:dish.sample.id
  )
end





