class FishesController < ApplicationController

  def fish
    @fish = Fish.fish
  end

  def all_fish
    @fishes = Fish.all
  end





end
