class CreateKanjis < ActiveRecord::Migration[7.0]
  def change
    create_table :kanjis do |t|
      t.string :character, null: false, index: { unique: true }
      t.timestamps
    end
  end
end
