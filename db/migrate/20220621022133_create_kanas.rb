class CreateKanas < ActiveRecord::Migration[7.0]
  def change
    create_table :kanas do |t|
      t.belongs_to :kanji, null: false, foreign_key: true
      t.integer :type, null: false
      t.string :yomigana, null: false
      t.string :okurigana
      t.timestamps
    end
  end
end
