class TestPdf < Prawn::Document
  def initialize(kanji_ids)
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
    kanji_ids.each_with_index do |kanji_id, i|
      start_x_position = start_x_positions[i]
      start_y_position = start_y_positions[i]
      yomigana = Kana.find(kanji_id).yomigana
      case kanji_id
      when '1'
        text_box yomigana[0], at: [start_x_position, start_y_position + 20], width: 20, height: 40, align: :center, valign: :center
        text_box yomigana[1], at: [start_x_position, start_y_position - 20], width: 20, height: 40, align: :center, valign: :center
      when '2'
        text_box yomigana[0], at: [start_x_position, start_y_position + 20], width: 20, height: 40, align: :center, valign: :center
        text_box yomigana[1], at: [start_x_position, start_y_position - 20], width: 20, height: 40, align: :center, valign: :center
      when '3'
        text_box yomigana[0], at: [start_x_position, start_y_position + 20], width: 20, height: 40, align: :center, valign: :center
        text_box yomigana[1], at: [start_x_position, start_y_position - 20], width: 20, height: 40, align: :center, valign: :center
      when '4'
        text_box yomigana[0], at: [start_x_position, start_y_position + 20], width: 20, height: 80, align: :center, valign: :center
      when '5'
        text_box yomigana[0], at: [start_x_position, start_y_position + 20], width: 20, height: 40, align: :center, valign: :center
        text_box yomigana[1], at: [start_x_position, start_y_position - 20], width: 20, height: 40, align: :center, valign: :center
      when '6'
        text_box yomigana[0], at: [start_x_position, start_y_position + 20], width: 20, height: 40, align: :center, valign: :center
        text_box yomigana[1], at: [start_x_position, start_y_position - 20], width: 20, height: 40, align: :center, valign: :center
        text_box Kana.find(kanji_id).okurigana, at: [start_x_position - 90, start_y_position - 60], width: 80, height: 80, size: 50, align: :center, valign: :center
      end
      bounding_box([start_x_position - 90, start_y_position + 20], width: 80, height: 80) { stroke_bounds }
    end
  end
end
