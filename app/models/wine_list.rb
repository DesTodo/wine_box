class WineList < ApplicationRecord
  belongs_to :user
  validates_presence_of :name

  has_many :wine_lists_wines
  has_many :wines, through: :wine_lists_wines
end
