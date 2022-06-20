class TestPdf < Prawn::Document
  def initialize
    super(
      page_size: 'A4',
      page_layout: :landscape
    )
    # 座標を表示
    stroke_axis

    # fontをパスで指定
    font 'app/assets/fonts/ipaexg.ttf'

    # ①
    draw_text 'や', at: [740, 480]
    draw_text 'ま', at: [740, 440]
    bounding_box([650, 500], width: 80, height: 80) do
      stroke_bounds
    end

    # ②
    draw_text 'か', at: [590, 480]
    draw_text 'わ', at: [590, 440]
    bounding_box([500, 500], width: 80, height: 80) do
      stroke_bounds
    end

    # ③
    draw_text 'い', at: [440, 480]
    draw_text 'ち', at: [440, 440]
    bounding_box([350, 500], width: 80, height: 80) do
      stroke_bounds
    end

    # ④
    draw_text 'に', at: [290, 480]
    bounding_box([200, 500], width: 80, height: 80) do
      stroke_bounds
    end

    # ⑤
    draw_text 'さ', at: [140, 480]
    draw_text 'ん', at: [140, 440]
    bounding_box([50, 500], width: 80, height: 80) do
      stroke_bounds
    end
  end
end
