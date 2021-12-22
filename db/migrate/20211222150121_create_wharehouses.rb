class CreateWharehouses < ActiveRecord::Migration[6.1]
  def change
    create_table :wharehouses do |t|
      t.string :address
      t.string :title
      t.timestamps
    end
  end
end