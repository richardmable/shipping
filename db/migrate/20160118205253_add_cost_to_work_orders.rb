class AddCostToWorkOrders < ActiveRecord::Migration
  def change
  	add_column :work_orders, :cost, :integer
  end
end
