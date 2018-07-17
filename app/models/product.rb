class Product < ApplicationRecord
  has_many :countries
  has_many :categories
  has_and_belongs_to_many :order

  validates :title, presence: true, length: {minimum: 8 }
  validates_numericality_of :price, :message=>"Error Message"
end
