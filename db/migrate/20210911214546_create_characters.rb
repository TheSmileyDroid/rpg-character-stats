class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.text :desc
      t.integer :points
      t.integer :hp
      t.integer :fp
      t.boolean :alive

      t.timestamps
    end
  end
end
