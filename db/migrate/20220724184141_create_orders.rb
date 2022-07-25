class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :statusOrder
      t.string :date
      t.integer :quantity
      t.belongs_to :client
      t.belongs_to :dish

      t.timestamps
    end
  end
end
