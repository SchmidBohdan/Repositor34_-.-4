class Product < ApplicationRecord
  belongs_to :country
  belongs_to :category
  # has_and_belongs_to_many :order

  validates :title, presence: true, length: {minimum: 8 }
  validates_numericality_of :price, :message=>"Error Message"
end
