class AddColumnDelivery < ActiveRecord::Migration[6.1]
  add_column :deliveries, :status, :integer
end
