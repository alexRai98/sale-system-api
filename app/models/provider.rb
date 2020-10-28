class Provider < ApplicationRecord
  validates :name, uniqueness: true, presence: true
end
