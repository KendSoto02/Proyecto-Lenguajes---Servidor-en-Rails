class ChangeForeignKeyForProducts < ActiveRecord::Migration[5.2]
  def change
    rename_column :products
  end
end
