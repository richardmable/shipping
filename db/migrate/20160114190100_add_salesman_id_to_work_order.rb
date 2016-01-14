class AddSalesmanIdToWorkOrder < ActiveRecord::Migration
  def change
  	add_column :work_orders, :salesman_id, :integer
  end
end
