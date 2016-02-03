class Category < ActiveRecord::Base

  has_many :categorized_fishes
  has_many :fishes, through: :categorized_fishes

  
  
end
