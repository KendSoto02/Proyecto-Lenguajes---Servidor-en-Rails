class CreateDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :dishes do |t|
      t.string :picture
      t.string :name
      t.string :existence
      t.string :description
      t.decimal :price

      t.timestamps
    end
  end
end
