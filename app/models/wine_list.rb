class WineList < ApplicationRecord
  belongs_to :user

  has_many :wines_wine_lists
  has_many :wines, through: :wines_wine_lists
end
