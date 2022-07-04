require './db/data/kanji/master'

[*KANJI_MASTER].each do |kanji|
  Kanji.create(character: kanji[:character]).tap do |character|
    kanji[:onyomi].each { |onyomi| Kana.create(kanji: character, type: :onyomi, yomigana: onyomi) }
    kanji[:kunyomi].each { |kunyomi| Kana.create(kanji: character, type: :kunyomi, yomigana: kunyomi[:yomigana], okurigana: kunyomi[:okurigana]) }
  end
end
