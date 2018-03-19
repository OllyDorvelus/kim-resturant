class TypesController < ApplicationController
  before_action :set_main_type, only: [:main]
  def main
    @foods = @type.foods
    @menutitle = @type.name.capitalize
  end
  
  private
  
  def set_main_type
    @type = Type.find_by(name: params[:name])
  end
end