class CreateKanjiReadings < ActiveRecord::Migration[7.0]
  def change
    create_table :kanji_readings do |t|
      t.belongs_to :kanji_character, null: false, foreign_key: true
      t.integer :type, null: false
      t.string :reading, null: false
      t.string :okurigana
      t.timestamps
    end
  end
end
