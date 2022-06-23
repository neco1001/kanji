class CreateKanjiCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :kanji_characters do |t|
      t.string :character, null: false, index: { unique: true }
      t.timestamps
    end
  end
end
