class FoodsController < ApplicationController 
  def show
    @food = Food.find(params[:id])
  end
  
  def menu
    @foods = Food.all
    @menutitle = "Food Gallery"
  end
end