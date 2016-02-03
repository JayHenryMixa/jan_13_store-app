class CartedFish < ActiveRecord::Base

 belongs_to :fish 
 belongs_to :order
 belongs_to :user


end
