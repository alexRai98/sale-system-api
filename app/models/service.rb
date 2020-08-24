class Service < ApplicationRecord
  validates :name, uniqueness: true, presence: true
end
