class AddColumnWharehousing2 < ActiveRecord::Migration[6.1]
  add_column :wharehousings, :price, :float
  add_column :wharehousings, :start_date, :datetime 
  add_column :wharehousings, :end_date, :datetime 
end
