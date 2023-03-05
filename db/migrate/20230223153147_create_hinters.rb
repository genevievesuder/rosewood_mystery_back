class CreateHinters < ActiveRecord::Migration[7.0]
  def change
    create_table :hinters do |t|
      t.string :name

      t.timestamps
    end
  end
end
