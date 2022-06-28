class Kana < ApplicationRecord
  belongs_to :kanji

  enum type: %i(onyomi kunyomi)

  validates :type, inclusion: { in: types.keys }
  validates :yomigana, presence: true
  validates :okurigana, absence: true, if: :onyomi?

  self.inheritance_column = :_type_disabled
end
