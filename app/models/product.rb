class Product < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  belongs_to :business 
end
