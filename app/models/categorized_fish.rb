class CategorizedFish < ActiveRecord::Base

  belongs_to :fish
  belongs_to :category 
end
