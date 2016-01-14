class RemoveTableEmployeesAddEmployeeAttrToPmAndSalesmen < ActiveRecord::Migration

  def change
  	drop_table :employees
  	add_column :port_managers, :email, :string
  	add_column :port_managers, :password_digest, :string
  	add_column :salesmen, :email, :string
  	add_column :salesmen, :password_digest, :string
  end
end
