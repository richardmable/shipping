class CreateBoats < ActiveRecord::Migration
  def change
    create_table :boats do |t|
      t.integer :container_limit
      t.string :name

      t.timestamps null: false
    end
  end
end
