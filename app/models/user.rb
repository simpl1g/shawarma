class User < ApplicationRecord
  has_many :deliveries

  validates :email, format: { with: /.*@1pt.com/ }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
