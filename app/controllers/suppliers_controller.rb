class SuppliersController < ApplicationController

  before_action :authenticate_admin!, except: [:index]


  def index
    @suppliers = Suppliers.all 
  end

  def new
  end

  def create
    @supplier = Supplier.create({name: params[:name], email: params[:email], phone: params[:phone]})
    redirect_to "/suppliers/#{@supplier.id}"
  end

  def show
    @supplier = Supplier.find(params[:id])
  end

  def edit 
    @supplier = Supplier.find(params[:id])
  end

  def update
    @supplier = Supplier.find(params[:id])
    @supplier.update({name: params[:name], email: params[:email], phone: params[:phone]})
    redirect_to "/suppliers#{@supplier.id}"
  end

  def destory
    @supplier = Supplier.find(params[:id])
    supplier.destory
    redirect_to "/"
  end
  
end
