class AddCompleteToWoAndAddWoCurrentToBoat < ActiveRecord::Migration
  def change
  	add_column :work_orders, :complete, :boolean
  	add_column :boats, :current_work_order_id, :integer
  end
end
