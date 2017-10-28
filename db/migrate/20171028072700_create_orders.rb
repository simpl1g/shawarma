class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.belongs_to :delivery, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.string :preferred_payment_method

      t.timestamps
    end
  end
end
