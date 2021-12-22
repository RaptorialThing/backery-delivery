class CreateDeliveries < ActiveRecord::Migration[6.1]
  def change
    create_table :deliveries do |t|
      t.belongs_to :item
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.string :start_address
      t.string :end_address
      t.timestamps
    end
  end
end
