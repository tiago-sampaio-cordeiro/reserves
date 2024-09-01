
#query para verificar os restaurantes favoritos de um usuario especifico
module RestaurantAndTablesQuery
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

  def get_query(sorter = "")
    @query = Restaurant
               .joins(:tables)
               .select(
                 "restaurants.id AS restaurant_id",
                 "restaurants.restaurant_name AS restaurant_name",
                 "restaurants.address AS address",
                 "tables.id AS table_id",
                 "tables.number_table AS number_table"
               )
    #.order(sorter)
    #  .distinct('users.id')
               .where(restaurants: { id: 7})


    @query = @query.map do |entry|
      {
        restaurant_id: entry.restaurant_id,
        restaurant_name: entry.restaurant_name,
        address: entry.address,
        table_id: entry.table_id,
        number_table: entry.number_table
      }.values
    end
  end
end