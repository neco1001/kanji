class Reading < ApplicationRecord
  belongs_to :kanji

  enum type: %i(onyomi kunyomi)

  validates :type, inclusion: { in: types.keys }
  validates :kana, presence: true
  validates :okurigana, absence: true, if: :onyomi?

  self.inheritance_column = :_type_disabled
end
