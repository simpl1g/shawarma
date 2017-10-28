class StoreItem < ApplicationRecord
  belongs_to :store

  validates :name, :price, :store, presence: true
  validates :price, numericality: { greater_than: 0 }
end
