class Order < ApplicationRecord
  has_many users
  has_and_belongs_to_many :product

  validates_presence_of :title
  validates_numericality_of :price, :message=>"Error Message"
end
