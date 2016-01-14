class CreateBoatWorkOrders < ActiveRecord::Migration
  def change
    create_table :boat_work_orders do |t|
      t.integer :boat_id
      t.integer :work_order_id

      t.timestamps null: false
    end
  end
end
