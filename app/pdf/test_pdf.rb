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
    start_y_position = 500
    height = 80
    kanji_ids.each_with_index do |kanji_id, i|
      start_x_position = start_x_positions[i]
      move_cursor_to start_y_position
      kanji = Kanji.find(kanji_id)
      kana = kanji.kanas.sample

      kana.yomigana.chars.each do |char|
        text_box char, at: [start_x_position, cursor], width: 20, height: height / kana.yomigana.size, align: :center, valign: :center
        move_down 40
      end

      move_cursor_to start_y_position
      bounding_box([start_x_position - 90, cursor], width: 80, height: height) { stroke_bounds }

      if kana.okurigana.present?
        kana.okurigana.chars.each do |char|
          text_box char, at: [start_x_position - 90, cursor], width: 80, height: height, size: 40, align: :center, valign: :center
          move_down 60
        end
      end
    end
  end
end
