class CreatePortManagerBoats < ActiveRecord::Migration
  def change
    create_table :port_manager_boats do |t|
      t.integer :port_manager_id
      t.integer :boat_id

      t.timestamps null: false
    end
  end
end
