class Wine < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
