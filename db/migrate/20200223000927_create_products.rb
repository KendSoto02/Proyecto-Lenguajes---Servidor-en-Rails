class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :imagen
      t.string :nombre
      t.string :descripcion
      t.integer :existencia
      t.decimal :precio

      t.timestamps
    end
  end
end
