class CreateWharehousings < ActiveRecord::Migration[6.1]
  def change
    create_table :wharehousings do |t|
      t.belongs_to :wharehouse
      t.belongs_to :delivery_courier_bid
      t.belongs_to :wharehouseman
      t.timestamps
    end
  end
end
