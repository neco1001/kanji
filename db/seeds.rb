[
  { character: '山', onyomi: ['サン'], kunyomi: [{ yomigana: 'やま', okurigana: nil }] },
  { character: '川', onyomi: [], kunyomi: [{ yomigana: 'かわ', okurigana: nil }] },
  { character: '一', onyomi: ['イチ'], kunyomi: [] },
  { character: '二', onyomi: ['ニ'], kunyomi: [] },
  { character: '三', onyomi: ['サン'], kunyomi: [] },
  { character: '赤', onyomi: [], kunyomi: [{ yomigana: 'あか', okurigana: 'い' }] },
  { character: '教', onyomi: [], kunyomi: [{ yomigana: 'おし', okurigana: 'える' }] },
  { character: '見', onyomi: [], kunyomi: [{ yomigana: 'み', okurigana: 'る' }, { yomigana: 'み', okurigana: 'える' }] },
].each do |kanji|
  Kanji.create(character: kanji[:character]).tap do |character|
    kanji[:onyomi].each { |onyomi| Kana.create(kanji: character, type: :onyomi, yomigana: onyomi) }
    kanji[:kunyomi].each { |kunyomi| Kana.create(kanji: character, type: :kunyomi, yomigana: kunyomi[:yomigana], okurigana: kunyomi[:okurigana]) }
  end
end
