class Order < ApplicationRecord
  belongs_to :delivery
  belongs_to :user

  validates :delivery, :user, presence: true
end
