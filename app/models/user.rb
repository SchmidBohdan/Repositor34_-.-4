class User < ApplicationRecord
 belongs_to order

 validates :name, presence: true, length: {minimum: 10 }
 validates :surname, presence: true, length: {minimum: 10 }
 validates_numericality_of :age, :message=>"Error Message"

end
