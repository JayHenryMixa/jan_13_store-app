class FishesController < ApplicationController


  def index
    @fishes = Fish.all
    

    if params[:sort] && params[:sort_order]
    #  @fishes = Fish.order(:price)
       @fishes = @fishes.order(params[:sort] => params[:sort_order])
    end
    if params[:discount]
      @fishes = @fishes.where("price < ?", params[:discount])
    end 

    if params[:category]
      @fishes = Category.find_by(name: params[:category]).fishes 
    end 
  end  


  def show
    @fish = Fish.find(params[:id])
  end
#def new stays empty
  def new
  end

  def create
    @fish = Fish.create({
      name: params[:name], 
      price: params[:price], 
      description: params[:description],
      supplier_id: params[:supplier][:supplier_id]
      })

    Image.create(url: params[:image], fish_id: @fish.id) if params[:image] != ""


    flash[:success] = "New Item Added"

    redirect_to "/"
  end

  def edit
    @fish = Fish.find(params[:id])
  end

  def update
    @fish = Fish.find(params[:id])
    

    @fish.update({name: params[:name], price: params[:price], description: params[:description]})

      

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

    def random
      @fish = Fish.all.sample
      #redirect_to "/fishes/#{@fish.id}"
      render :show
    end

    def search
      @fishes = Fish.where("name LIKE ? OR description LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%")

      render :index
    end 
end
