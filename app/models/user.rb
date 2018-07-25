class User < ApplicationRecord
 has_many :orders

 validates :name, presence: true, length: {minimum: 10 }
 validates :surname, presence: true, length: {minimum: 10 }
 validates_numericality_of :age, :message=>"Error Message"

end
