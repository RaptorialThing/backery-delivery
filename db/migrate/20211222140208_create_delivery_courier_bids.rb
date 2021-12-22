class CreateDeliveryCourierBids < ActiveRecord::Migration[6.1]
  def change
    create_table :delivery_courier_bids do |t|
      t.belongs_to :courier
      t.belongs_to :delivery
      t.float :price
      t.string :start_address
      t.string :end_address
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.timestamps
    end
  end
end
