class ChangeContainerColumnToContainerCount < ActiveRecord::Migration
  def change
  	remove_column :work_orders, :containers
  	add_column :work_orders, :container_count, :integer
  end
end
