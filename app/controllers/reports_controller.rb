require_relative '../pdfs/ponto_gestor_pdf/base_ponto_gestor_pdf'
class ReportsController < ApplicationController
    before_action :set_sorter
  
    def generate_report(entity_name:,  title:)
      respond_to do |format|
        format.pdf do
          pdf = BasePontoGestorPdf.new( title: title)
          pdf.render_document
          send_data(pdf.render, filename: "#{entity_name}.pdf", type: "application/pdf", disposition: "inline")
        end
      end
    end
  
    def set_sorter
      @sorter = params[:option]
    end
  end