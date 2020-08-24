class Customer < ApplicationRecord
  validates :name, uniqueness: true, presence: true
end
