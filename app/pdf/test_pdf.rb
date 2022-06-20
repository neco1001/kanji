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
        bounding_box([start_x_position, start_y_position + 20], width: 20, height: 40) do
          text 'や', align: :center, valign: :center
        end
        bounding_box([start_x_position, start_y_position - 20], width: 20, height: 40) do
          text 'ま', align: :center, valign: :center
        end
      when '2'
        bounding_box([start_x_position, start_y_position + 20], width: 20, height: 40) do
          text 'か', align: :center, valign: :center
        end
        bounding_box([start_x_position, start_y_position - 20], width: 20, height: 40) do
          text 'わ', align: :center, valign: :center
        end
      when '3'
        bounding_box([start_x_position, start_y_position + 20], width: 20, height: 40) do
          text 'い', align: :center, valign: :center
        end
        bounding_box([start_x_position, start_y_position - 20], width: 20, height: 40) do
          text 'ち', align: :center, valign: :center
        end
      when '4'
        bounding_box([start_x_position, start_y_position + 20], width: 20, height: 80) do
          text 'に', align: :center, valign: :center
        end
      when '5'
        bounding_box([start_x_position, start_y_position + 20], width: 20, height: 40) do
          text 'さ', align: :center, valign: :center
        end
        bounding_box([start_x_position, start_y_position - 20], width: 20, height: 40) do
          text 'ん', align: :center, valign: :center
        end
      when '6'
        bounding_box([start_x_position, start_y_position + 20], width: 20, height: 40) do
          text 'あ', align: :center, valign: :center
        end
        bounding_box([start_x_position, start_y_position - 20], width: 20, height: 40) do
          text 'か', align: :center, valign: :center
        end
        bounding_box([start_x_position - 90, start_y_position - 60], width: 80, height: 80) do
          text 'い', size: 50, align: :center, valign: :center
        end
      end
      bounding_box([start_x_position - 90, start_y_position + 20], width: 80, height: 80) do
        stroke_bounds
      end
    end
  end
end
