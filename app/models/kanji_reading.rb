class KanjiReading < ApplicationRecord
  belongs_to :kanji_character

  enum type: %i(onyomi kunyomi)

  validates :type, inclusion: { in: types.keys }
  validates :reading, presence: true
  validates :okurigana, absence: true, if: :onyomi?

  self.inheritance_column = :_type_disabled
end
