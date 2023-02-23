class CreateHints < ActiveRecord::Migration[7.0]
  def change
    create_table :hints do |t|
      t.string :info
      
      t.references :hinter, null: false, foreign_key: true
      t.references :mystery, null: false, foreign_key: true

      t.timestamps
    end
  end
end
