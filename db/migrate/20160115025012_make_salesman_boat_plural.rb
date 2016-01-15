class MakeSalesmanBoatPlural < ActiveRecord::Migration
  def change
  	rename_table :salesman_boat, :salesman_boats
  	remove_column :salesman_boats, :sales_man_id
  	add_column :salesman_boats, :salesman_id, :integer
  end
end
