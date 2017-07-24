class Wine < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :wine_lists_wines
  has_many :wine_lists, through: :wine_lists_wines
end
