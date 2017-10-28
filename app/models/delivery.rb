class Delivery < ApplicationRecord
  has_many :orders, dependent: :destroy
  belongs_to :store

  validates :start_at, :close_at, :created_by, :store, presence: true

  delegate :name, to: :store, prefix: true
end
