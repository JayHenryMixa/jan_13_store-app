class ImagesController < ApplicationController

  def index
    @images = Images.all
  end
  
end 
