class RegistrationsController < ReportsController
  before_action :set_sorter
  def ponto_gestor_report
    #data = RestaurantfavoriteQuery::sort_data(@sorter)
    title = "Comprovante de registro de ponto"
    generate_report(entity_name: "Comprovante de ponto", title: title)
  end
end


