class PostPdfController < ApplicationController
  def index
    respond_to do | format |
      format.html
      format.pdf do
        post_pdf = PracticePdf::PostPdf.new().render
        send_data post_pdf,
          filename: 'post_pdf.pdf',
          type: 'application/pdf',
          disposition: 'inline' 
      end
    end
  end
end
