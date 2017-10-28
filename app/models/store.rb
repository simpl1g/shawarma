class Store < ApplicationRecord
  has_many :store_items

  validates :name, presence: true
end
