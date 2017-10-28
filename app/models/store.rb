class Store < ApplicationRecord
  has_many :store_items
  has_many :deliveries

  validates :name, presence: true
end
