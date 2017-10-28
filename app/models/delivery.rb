class Delivery < ApplicationRecord
  belongs_to :store

  validates :start_at, :close_at, :created_by, :store, presence: true
end
