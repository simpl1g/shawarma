class Order < ApplicationRecord
  has_many :order_items, dependent: :destroy
  accepts_nested_attributes_for :order_items, reject_if: :all_blank, allow_destroy: true

  belongs_to :delivery
  belongs_to :user

  has_one :store, through: :delivery

  enum preferred_payment_menthod: [:card, :cash]

  validates :delivery, :user, presence: true
  validate :at_least_one_item

  delegate :name, to: :store, prefix: true

  def total
    items = OrderItem.where(order_id: id).joins(:store_item)
      .select("sum(price * quantity) as total")
      .group(:order_id).to_a.last
    if items.present?
      items.total
    else
      0
    end
  end

  private

  def at_least_one_item
    if order_items.size < 1
      errors.add(:base, 'At least one item required to order')
    end
  end
end
