class ImagesController < ApplicationController

  before_action :authenticate_admin!

  def index
    @images = Images.all
  end
  
end 
