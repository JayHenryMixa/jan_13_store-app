class Order < ActiveRecord::Base
  
  belongs_to :user

  
  has_many :carted_fishes
  has_many :fishes, through: :carted_fishes 

  def calculate_totals
    
    subtotal = 0

    carted_fishes.each do |carted_fish|
      subtotal = carted_fish.subtotal 
    end

    tax = subtotal * 0.09
    total = subtotal = tax 

    update(subtotal: subtotal, tax: tax, total: total)
  end

end
