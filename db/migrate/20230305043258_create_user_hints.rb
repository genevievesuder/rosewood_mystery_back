class CreateUserHints < ActiveRecord::Migration[7.0]
  def change
    create_table :user_hints do |t|
      t.references :user, null: false, foreign_key: true
      t.references :hint, null: false, foreign_key: true

      t.timestamps
    end
  end
end
