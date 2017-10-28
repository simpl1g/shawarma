class Order < ApplicationRecord
  has_many :order_items, dependent: :destroy

  belongs_to :delivery
  belongs_to :user

  validates :delivery, :user, presence: true
end
