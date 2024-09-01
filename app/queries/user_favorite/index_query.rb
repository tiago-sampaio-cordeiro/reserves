
#query para verificar os restaurantes favoritos de um usuario especifico
module RestaurantfavoriteQuery
  extend self
  attr_reader :query

  def sort_data(sorter)
    filters = {
      "name-asc" => -> { get_query("users.name ASC") },
      "name-desc" => -> { get_query("users.name DESC") },
      "address-asc" => -> { get_query("address ASC") },
      "address-desc" => -> { get_query("address DESC") },
      "user-id-asc" => -> { get_query("users.id ASC") },
      "user-id-desc" => -> { get_query("users.id DESC") }
    }


      filters.fetch(sorter, -> {
        get_query
        return @query
      }).call
  end

  def get_query(sorter = "users.id ASC")
    @query = User
               .joins(:reservations)
               .joins(reservations: :restaurant)
               .joins(restaurants: :tables)
               .select(
                 "users.id AS user_id",
                 "users.name AS user_name",
                 "restaurants.id AS restaurant_id",
                 "restaurants.restaurant_name AS restaurant_name",
                 "restaurants.address AS address",
                 "tables.id AS table_id"
               )
               .order(sorter)
    #  .distinct('users.id')
    #  .where(users: { id: 9})


    @query = @query.map do |entry|
      {
        user_id: entry.user_id,
        name: entry.user_name,
        restaurant_id: entry.restaurant_id,
        restaurant_name: entry.restaurant_name,
        address: entry.address,
        table_id: entry.table_id
      }.values
    end
  end
end