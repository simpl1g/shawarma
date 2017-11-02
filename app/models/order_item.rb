class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :store_item

  validates :order, :store_item, :quantity, presence: true
  validates :quantity, numericality: { greater_than: 0 }

  delegate :label, to: :store_item
end
