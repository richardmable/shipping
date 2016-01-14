class CreateWorkOrders < ActiveRecord::Migration
  def change
    create_table :work_orders do |t|
      t.string :origin
      t.string :destination
      t.integer :containers
      t.integer :boat_id
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
