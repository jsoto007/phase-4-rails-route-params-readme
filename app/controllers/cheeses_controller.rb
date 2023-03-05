class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  def show
    found_cheese = Cheese.find_by(id: params[:id])
    render json: found_cheese
  end 

end
