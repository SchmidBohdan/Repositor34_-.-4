class Country < ApplicationRecord
  belongs_to :product

  validates :title

end
