class CreateComentarios < ActiveRecord::Migration[6.1]
  def change
    create_table :comentarios do |t|
      t.string :autor
      t.text :body
      t.references :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
