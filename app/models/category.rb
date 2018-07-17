class Category < ApplicationRecord
  belongs_to :product

  validates :title, presence: true, length: {minimum: 4 }
end
