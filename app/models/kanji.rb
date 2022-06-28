class Kanji < ApplicationRecord
  has_many :kanas

  validates :character, presence: true, length: { is: 1 }, uniqueness: true
end
