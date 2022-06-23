class KanjiCharacter < ApplicationRecord
  has_many :kanji_readings

  validates :character, presence: true, length: { is: 1 }, uniqueness: true

  alias :readings :kanji_readings
end
