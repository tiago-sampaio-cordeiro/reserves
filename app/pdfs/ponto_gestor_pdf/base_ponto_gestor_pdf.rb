require_relative 'application_ponto_gestor_pdf'
class BasePontoGestorPdf < ApplicationPontoGestorPdf
    attr_reader :pdf
  
    def initialize( title:)
      super()
      @title = title
    end
  
    def render_document
      write_logo
      write_title(@title)
      # write_description(@data)
    end
end