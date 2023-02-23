class CreateMysteries < ActiveRecord::Migration[7.0]
  def change
    create_table :mysteries do |t|
      t.string :name

      t.timestamps
    end
  end
end
