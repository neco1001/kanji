class TestPdf < Prawn::Document
  def initialize(questions)
    super(
      page_size: 'A4',
      page_layout: :landscape
    )

    # 座標を表示
    stroke_axis

    # fontをパスで指定
    font 'app/assets/fonts/ipaexg.ttf'

    start_x_positions = [740, 590, 440, 290, 140]
    start_y_positions = [480, 480, 480, 480, 480]
    5.times do |i|
      start_x_position = start_x_positions[i]
      start_y_position = start_y_positions[i]
      case questions[i]
      when '1'
        draw_text 'や', at: [start_x_position, start_y_position]
        draw_text 'ま', at: [start_x_position, start_y_position - 40]
      when '2'
        draw_text 'か', at: [start_x_position, start_y_position]
        draw_text 'わ', at: [start_x_position, start_y_position - 40]
      when '3'
        draw_text 'い', at: [start_x_position, start_y_position]
        draw_text 'ち', at: [start_x_position, start_y_position - 40]
      when '4'
        draw_text 'に', at: [start_x_position, start_y_position]
      when '5'
        draw_text 'さ', at: [start_x_position, start_y_position]
        draw_text 'ん', at: [start_x_position, start_y_position - 40]
      when '6'
        draw_text 'あ', at: [start_x_position, start_y_position]
        draw_text 'か', at: [start_x_position, start_y_position - 40]
      end
      bounding_box([start_x_position - 90, start_y_position + 20], width: 80, height: 80) do
        stroke_bounds
      end

      if questions[i] == '6'
        bounding_box([start_x_position - 90, start_y_position - 60], width: 80, height: 80) do
          text 'い', size: 50, align: :center, valign: :center
        end
      end
    end
  end
end
