class AddIndexToItems < ActiveRecord::Migration[6.1]
  def change
  add_reference :items, :seller_id, references: :users
  end
end
