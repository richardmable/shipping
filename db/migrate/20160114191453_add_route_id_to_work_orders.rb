class AddRouteIdToWorkOrders < ActiveRecord::Migration
  def change
  	add_column :work_orders, :route_id, :integer
  end
end
