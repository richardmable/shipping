class RemoveSpellingErrorsInWorkOrders < ActiveRecord::Migration
  def change
  	remove_column :work_orders, :desination_port_manager_id
  	add_column :work_orders, :destination_port_manager_id, :integer
  end
end
