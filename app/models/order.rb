class Order < ApplicationRecord
  has_many :order_items, dependent: :destroy

  belongs_to :delivery
  belongs_to :user

  has_one :store, through: :delivery

  validates :delivery, :user, presence: true

  enum preferred_payment_menthod: [:card, :cash]

  delegate :name, to: :store, prefix: true
end
