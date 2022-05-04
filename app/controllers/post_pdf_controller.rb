class PostPdfController < ApplicationController
  def index
    respond_to do | format |
      format.html
      format.pdf do
        post_pdf = PracticePdf::PostPdf.new().render
        send_data post_pdf,
          filename: '無題.pdf',
          type: 'application/pdf',
          disposition: 'inline' 
      end
    end
  end
end