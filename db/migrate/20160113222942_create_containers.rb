class CreateContainers < ActiveRecord::Migration
  def change
    create_table :containers do |t|
      t.integer :work_order_id
      t.integer :weight
      t.integer :cargo_type

      t.timestamps null: false
    end
  end
end
