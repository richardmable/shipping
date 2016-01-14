class RemoveWorkOrderIdFromBoats < ActiveRecord::Migration
  def change
  	remove_column :boats, :current_work_order_id
  end
end
