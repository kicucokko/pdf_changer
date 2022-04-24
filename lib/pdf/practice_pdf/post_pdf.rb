module PracticePdf
  class PostPdf < Prawn::Document
    def initialize
      super(page_size: 'A4') 
      stroke_axis 
    end
  end
end