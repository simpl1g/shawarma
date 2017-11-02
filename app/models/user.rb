class User < ApplicationRecord
  has_many :orders

  validates :email, format: { with: /.*@1pt.com/ }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def active_orders
    orders.where(delivery: Delivery.active)
  end
end
