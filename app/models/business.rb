class Business < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  has_many :products 
end
