class Country < ApplicationRecord

  has_many :products

  validates :title, presence: true, length: {minimum: 4 }

end
