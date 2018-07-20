class Order < ApplicationRecord
  belongs_to :user
  # has_and_belongs_to_many :product

  validates :deliveryAddress, presence: true, length: {minimum: 10 }

end
