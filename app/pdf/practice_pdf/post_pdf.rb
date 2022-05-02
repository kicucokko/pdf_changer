require 'prawn'
module PracticePdf
  class PostPdf < Prawn::Document
    def initialize
      super(
        page_size: 'A4',
        top_margin: 10,
        bottom_margin: 30,
        left_margin: 20,
        right_margin: 20
      )
      font "app/assets/font/SourceHanSans-Bold.ttc"
      header
      move_down 50
      content
    end
    
    def header
      text_box "請 求 書",size: 50,
       at: [200,800]
      move_down 80
      text_box("発行日：#{Time.now.strftime("%Y年%m月%d日")}",
        at: [0, y],
        width: bounds.right,
        align:  :right)
      move_down 5
      text_box("差出人",at: [0,y-25],align: :right)
      text_box("住所",at: [0,y-40],align: :right)
      text_box("宛先",at: [0,y-25],align: :left)
      text_box("住所",at: [0,y-40],align: :left)
      text_box("合計金額",at: [0,y-55],width: bounds.right,align: :right)
    end

    def content
      data = [ ["商品名", "単価", "数量", "金額"] ]
      data += [["...","...","...","..."]] * 28
       table(data,
        column_widths: [250, 100, 50,150],
        header: true,
        row_colors: ["FFFFFF", "CCCCCC"]
      ) do |t|
        t.cells.border_width = 1.0
        t.columns(0).style align: :left
        t.columns(1).style align: :right
        t.columns(2).style align: :right
        t.columns(3).style align: :right
        t.row(0).style align: :center, background_color: "CCCCCC"
      end
    end
  end
end