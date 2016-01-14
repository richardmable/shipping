class CreateSalesmanBoats < ActiveRecord::Migration
  def change
    create_table :salesman_boats do |t|
      t.integer :sales_man_id
      t.integer :boat_id

      t.timestamps null: false
    end
  end
end
