class DropTableSalesmanBoatsAddTableSalesmanBoat < ActiveRecord::Migration
  def change
  	rename_table :salesman_boats, :salesman_boat
  end
end
