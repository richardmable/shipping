class ChangeDestAndOrigToIntegersForWo < ActiveRecord::Migration
  def change
  	remove_column :work_orders, :origin
  	remove_column :work_orders, :desination
  	remove_column :boats, :port
  	add_column :work_orders, :origin_port_manager_id, :integer
  	add_column :work_orders, :desination_port_manager_id, :integer
  	add_column :boats, :destination_port_manager_id, :integer
  end
end
