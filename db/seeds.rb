[
  { character: '山', onyomi: [], kunyomi: ['やま'] },
  { character: '川', onyomi: [], kunyomi: ['かわ'] },
  { character: '一', onyomi: ['イチ'], kunyomi: [] },
  { character: '二', onyomi: ['ニ'], kunyomi: [] },
  { character: '三', onyomi: ['サン'], kunyomi: [] },
  { character: '赤', onyomi: [], kunyomi: ['あか'], okurigana: 'い' }
].each do |kanji|
  Kanji.create(character: kanji[:character]).tap do |character|
    kanji[:onyomi].each { |onyomi| Reading.create(kanji: character, type: :onyomi, kana: onyomi) }
    kanji[:kunyomi].each { |kunyomi| Reading.create(kanji: character, type: :kunyomi, kana: kunyomi, okurigana: kanji[:okurigana]) }
  end
end
