class FishesController < ApplicationController


  def index
    @fishes = Fish.all
  end

  def show
    @fish = Fish.find_by(id: params[:id])
  end
#def new stays empty
  def new
  end

  def create
    @fish = Fish.create({
      name: params[:name], 
      price: params[:price], 
      image: params[:image], 
      description: params[:description]
      })

    flash[:success] = "New Item Added"

    redirect_to "/"
  end

  def edit
    @fish = Fish.find(params[:id])
  end

  def update
    @fish = Fish.find(params[:id])
    

    @fish.update({
      name: params[:name], 
      price: params[:price], 
      image: params[:image], 
      description: params[:description]
       })

      

      flash[:success] = "Item Updated"
      redirect_to "/fishes/#{@fish.id}"
  end

  def destroy
    @fish = Fish.find(params[:id])
    @fish.destroy

    flash[:success] = "You successfully removed an item."
    flash[:warning] = "You will remove this item. "

    redirect_to "/"
  end



end
