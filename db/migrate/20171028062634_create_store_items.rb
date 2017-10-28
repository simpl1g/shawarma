class CreateStoreItems < ActiveRecord::Migration[5.1]
  def change
    create_table :store_items do |t|
      t.string :name
      t.belongs_to :store, foreign_key: true
      t.decimal :price

      t.timestamps
    end
  end
end
