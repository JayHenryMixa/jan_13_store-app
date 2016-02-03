class CartedFishesController < ApplicationController

  def index
    if user_signed_in? && CartedFish.where(status: "carted", user_id: current_user.id).any?
      @carted_fishes = CartedFish.where(status: "carted", user_id: current_user.id)
    else 
      flash[:waring] = "You should try adding products to your cart"
      redirect_to "/"
    end
  end 
  

  def create
    @carted_fish = CartedFish.create({user_id: current_user.id, fish_id: params[:fish_id], quantity: params[:quantity],
    status: "Carted"})
   

    flash[:success] = "Your cart has been updated."
    redirect_to "/carted_fishes"
  end
end
