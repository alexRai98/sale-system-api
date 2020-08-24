class Business < ApplicationRecord
  validates :name, uniqueness: true, presence: true
end
