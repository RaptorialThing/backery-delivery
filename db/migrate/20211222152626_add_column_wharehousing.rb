class AddColumnWharehousing < ActiveRecord::Migration[6.1]
  add_column :wharehousings, :is_accepted_by_seller, :boolean
end
