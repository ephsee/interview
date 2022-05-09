class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      
      t.integer :store_id
      t.integer :customer_id
      t.integer :price

      t.timestamps
    end
  end
end
