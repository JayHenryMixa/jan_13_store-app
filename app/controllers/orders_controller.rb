class OrdersController < ApplicationController

  def create
    CartedFish.where(status: "carted", user_id: current_user.id)

    subtotal = 0

    carted_fishes.each do |carted_fish|
      subtotal = carted_fish.fish.price * carted_fish .quantity
    end

    tax = subtotal * 0.09
    total = subtotal = tax 

    order = Order.create(user_id: current_user.id, subtotal: subtotal, tax: tax, total: total)
    
    carted_fish.each do |carted_fish|
      carted_fish.update(order_id: order.id, status: "Purchased")
    end
  
    flash[:success] = "Your order is complete"
    redirect_to "/orders/#{order.id}"
  end 

  def show
    @order = Order.find_by(id: params[:id])
  end
end
