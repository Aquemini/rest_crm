class CreateShipments < ActiveRecord::Migration[5.0]
  def change
    create_table :shipments do |t|
      t.integer :order_id
      t.integer :order_detail_id
      t.float :cost
      t.string :courier_response

      t.timestamps
    end
    add_index :shipments, :order_id
    add_index :shipments, :order_detail_id
  end
end
