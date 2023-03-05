class CreateUserClues < ActiveRecord::Migration[7.0]
  def change
    create_table :user_clues do |t|
      t.references :user, null: false, foreign_key: true
      t.references :clue, null: false, foreign_key: true

      t.timestamps
    end
  end
end
