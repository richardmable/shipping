class CreateSalesmen < ActiveRecord::Migration
  def change
    create_table :salesmen do |t|
      t.string :territory

      t.timestamps null: false
    end
  end
end
