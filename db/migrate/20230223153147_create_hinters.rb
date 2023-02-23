class CreateHinters < ActiveRecord::Migration[7.0]
  def change
    create_table :hinters do |t|
      t.string :first_name
      t.string :last_name
      t.string :image
      t.string :address

      t.timestamps
    end
  end
end
