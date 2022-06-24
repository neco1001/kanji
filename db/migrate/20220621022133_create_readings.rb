class CreateReadings < ActiveRecord::Migration[7.0]
  def change
    create_table :readings do |t|
      t.belongs_to :kanji, null: false, foreign_key: true
      t.integer :type, null: false
      t.string :kana, null: false
      t.string :okurigana
      t.timestamps
    end
  end
end
