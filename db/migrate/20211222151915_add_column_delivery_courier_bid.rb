class AddColumnDeliveryCourierBid < ActiveRecord::Migration[6.1]
    add_column :delivery_courier_bids, :is_accepted_by_seller, :boolean
end
