class OrdersController < ApplicationController

  before_action :authenticate_user!

  def create
    carted_fishes = current_user.carted_fishes.where(status: "Carted")
    order = Order.create(user_id: current_user.id)
    
    carted_fishes.each do |carted_fish|
      carted_fish.update(order_id: order.id, status: "Purchased")
    end

    order.calculate_totals
  
    flash[:success] = "Your order is complete"
    redirect_to "/orders/#{order.id}"
  end 

  def show
    @order = Order.find(params[:id])

    if current_user.id != @order.user_id
      redirect_to "/"
    end

  end

end
