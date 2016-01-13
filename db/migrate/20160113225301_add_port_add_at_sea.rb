class AddPortAddAtSea < ActiveRecord::Migration
  def change
  	add_column :boats, :at_sea, :boolean
  	add_column :boats, :port, :string
  end
end
