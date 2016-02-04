class CartedFish < ActiveRecord::Base

 belongs_to :fish 
 belongs_to :order
 belongs_to :user

 def subtotal
  fish.price = quantity
end


end
