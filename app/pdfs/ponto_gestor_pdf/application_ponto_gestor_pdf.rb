class ApplicationPontoGestorPdf
  include Prawn::View

  def initialize
    fonts
  end

  def fonts
    font_families.update('Roboto' => {
      :bold => Rails.root.join('app/assets/fonts/Roboto/Roboto-Black.ttf'),
      :italic => Rails.root.join('app/assets/fonts/Roboto/Roboto-Italic.ttf'),
      :bold_italic => Rails.root.join('app/assets/fonts/Roboto/Roboto-BoldItalic.ttf'),
      :normal => Rails.root.join('app/assets/fonts/Roboto/Roboto-Light.ttf')
    })
  end

  def write_logo
    repeat(:all) do
      font "Roboto"


      bounding_box([0, cursor], width: bounds.width, height: 80) do
        image 'app/assets/images/ponto-gestor-logotipo.png', height: 60, position: :center


      end
    end
  end

  def write_title(title)
    font_size(27) { text title, align: :center, style: :italic }
  end

  # def write_description(data:)
  #   data
  # end

end