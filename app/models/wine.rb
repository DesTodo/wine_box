class Wine < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :wines_wine_lists
  has_many :wine_lists, through: :wines_wine_lists
end
