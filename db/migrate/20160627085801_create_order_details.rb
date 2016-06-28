class CreateOrderDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :order_details do |t|
      t.integer :order_id
      t.integer :product_id
      t.integer :shipment_id
      t.integer :quantity

      t.timestamps
    end
    add_index :order_details, :order_id
    add_index :order_details, :product_id
    add_index :order_details, :shipment_id
  end
end
