class WineListsWine < ApplicationRecord
  belongs_to :wine
  belongs_to :wine_list
end
