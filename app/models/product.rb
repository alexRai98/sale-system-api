class Product < ApplicationRecord
  has_and_belongs_to_many :providers
  belongs_to :business 
  validates :name, uniqueness: true, presence: true
end
