class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.belongs_to :seller
      t.float :price, default: 0
      t.text :text
      t.timestamps
    end
  end
end
