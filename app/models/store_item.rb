class StoreItem < ApplicationRecord
  has_many :order_items, dependent: :restrict_with_exception

  belongs_to :store

  validates :name, :price, :store, presence: true
  validates :price, numericality: { greater_than: 0 }
end
