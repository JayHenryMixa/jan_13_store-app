class Order < ActiveRecord::Base
  
  belongs_to :user

  
  has_many :carted_fishes
  has_many :fishes, through: :carted_fishes 

  def calc_subtotal(price)
    price * quantity
  end

  def calc_tax(tax_rate)
    subtotal * tax_rate
  end

  def calc_total
    subtotal + tax
  end

end
