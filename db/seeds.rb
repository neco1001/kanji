[
  { character: '山', onyomi: [], kunyomi: ['やま'] },
  { character: '川', onyomi: [], kunyomi: ['かわ'] },
  { character: '一', onyomi: ['イチ'], kunyomi: [] },
  { character: '二', onyomi: ['ニ'], kunyomi: [] },
  { character: '三', onyomi: ['サン'], kunyomi: [] },
  { character: '赤', onyomi: [], kunyomi: ['あか'], okurigana: 'い' }
].each do |kanji|
  KanjiCharacter.create(character: kanji[:character]).tap do |character|
    kanji[:onyomi].each { |onyomi| KanjiReading.create(kanji_character: character, type: :onyomi, reading: onyomi) }
    kanji[:kunyomi].each { |kunyomi| KanjiReading.create(kanji_character: character, type: :kunyomi, reading: kunyomi, okurigana: kanji[:okurigana]) }
  end
end
