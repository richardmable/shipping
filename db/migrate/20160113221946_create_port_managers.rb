class CreatePortManagers < ActiveRecord::Migration
  def change
    create_table :port_managers do |t|
      t.string :location

      t.timestamps null: false
    end
  end
end
