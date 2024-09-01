require_relative '../queries/user_favorite/index_query'
require_relative 'reserves_report_controller'
require_relative '../queries/user_favorite/restaurants_and_tables_query'
class UserFavoritesReportController < ReservesReportController
  include RestaurantfavoriteQuery
  include RestaurantAndTablesQuery
  before_action :set_sorter
  def userfavorites_report
    data = RestaurantfavoriteQuery::sort_data(@sorter)
    headers = ['id user','user','id_restaurante','Restaurante','Endereço','Table_id']
    title = 'Restaurantes/usuarios'
    generate_report(entity_name: "UserFavorite", data: data, headers: headers, title: title)
  end

  def restaurant_and_tables_report
    data = RestaurantAndTablesQuery::sort_data(@sorter)
    headers = ['id_restaurante','Restaurante','Endereço','Table_id','mesa']
    title = 'Restaurantes e mesas'
    generate_report(entity_name: "Mesas em restaurantes", data: data, headers: headers, title: title)
  end
end