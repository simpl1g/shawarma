class CreateDeliveries < ActiveRecord::Migration[5.1]
  def change
    create_table :deliveries do |t|
      t.belongs_to :store, foreign_key: true
      t.datetime :start_at
      t.datetime :close_at
      t.datetime :deliver_at
      t.decimal :discount
      t.string :created_by
      t.string :card_number

      t.timestamps
    end
  end
end
