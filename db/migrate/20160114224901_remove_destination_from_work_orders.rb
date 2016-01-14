class RemoveDestinationFromWorkOrders < ActiveRecord::Migration
  def change
  	remove_column :work_orders, :destination
  end
end
