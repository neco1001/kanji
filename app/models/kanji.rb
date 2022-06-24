class Kanji < ApplicationRecord
  has_many :readings

  validates :character, presence: true, length: { is: 1 }, uniqueness: true
end
