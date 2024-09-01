class ApplicationPdf
    include Prawn::View
  
    def initialize
      update_font_families
    end
  
    def update_font_families
      font_families.update('Noto_Sans' => {
        :bold => Rails.root.join('app/assets/fonts/Noto_Sans/static/NotoSans-Bold.ttf'),
        :italic => Rails.root.join('app/assets/fonts/Noto_Sans/static/NotoSans-BlackItalic.ttf'),
        :bold_italic => Rails.root.join('app/assets/fonts/Noto_Sans/static/NotoSans-BoldItalic.ttf'),
        :condensed_ExtraLight => Rails.root.join('app/assets/fonts/Noto_Sans/static/NotoSans_Condensed-ExtraLight.ttf'),
        :extraCondensed => Rails.root.join('app/assets/fonts/Noto_Sans/static/NotoSans_ExtraCondensed-Black.ttf')
      })
  
      font_families.update('Roboto' => {
        :bold => Rails.root.join('app/assets/fonts/Roboto/Roboto-Black.ttf'),
        :italic => Rails.root.join('app/assets/fonts/Roboto/Roboto-Italic.ttf'),
        :bold_italic => Rails.root.join('app/assets/fonts/Roboto/Roboto-BoldItalic.ttf'),
        :normal => Rails.root.join('app/assets/fonts/Roboto/Roboto-Light.ttf')
      })
  
      font_families.update('symbol' => {
        :symbol_regular => Rails.root.join('app/assets/fonts/Noto_Sans_Symbols_2/NotoSansSymbols2-Regular.ttf')
      })
  
      fallback_fonts(["Roboto"])
    end
  
    def write_header
      repeat(:all) do
        font "Roboto"
  
        title = "Reservas"
        date_text = "Date: #{Date.today.strftime('%m/%d/%Y')}"
  
        bounding_box([0, cursor], width: bounds.width, height: 40) do
          font_size(17) { draw_text title, at: [15, 45] }
  
          top_right = bounds.width - 15 - width_of(date_text)
          draw_text date_text, at: [top_right, 45]
  
          stroke_horizontal_rule
        end
      end
    end
  
    def write_title(title)
      font_size(27) { text title, align: :center, style: :italic }
    end
  
    def write_body
      bounding_box([0, bounds.top - 80], width: bounds.width) do
        font "Roboto"
        yield
      end
    end
  
    def write_table(data:, header:, width: bounds.width)
      table(
        [header] + data,
        width: width,
        cell_style: {
          align: :center,
          valign: :center,
          size: 11,
          border_width: 0.5,
          border_color: "7d7c7c",
          padding_bottom: 10
        }
      ) do
        cells.style do |cell|
          cell.background_color = ((cell.row) % 2).zero? ? 'd6d6d6' : 'f0f0f0'
        end
  
        row(0).style(
          font: "Roboto",
          font_style: :italic,
          text_align: :left,
          text_color: "F2F7FE",
          border_color: "3A1313",
          background_color: "2a2344",
          size: 14,
          overflow: :shrink_to_fit,
          single_line: true
        )
      end
    end
  
    def write_footer
      repeat(:all, dynamic: true) do
        draw_text page_number, at: [550, -10]
      end
    end
  end