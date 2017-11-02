class Delivery < ApplicationRecord
  has_many :orders, dependent: :destroy
  belongs_to :store

  validates :start_at, :close_at, :created_by, :store, presence: true

  delegate :name, to: :store, prefix: true

  class << self
    def active
      where("start_at < now() and close_at > now()").first
    end

    def next
      where("start_at >= now()").first
    end
  end
end
