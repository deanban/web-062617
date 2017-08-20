class DrinksController < ApplicationController

  before_action :find_drinks, only: [:show]

  def index
  	@drinks = Drink.all
  end

  def show
  end

  def new
  	@drink = Drink.new
  end

  def create
  	@drink = Drink.new(drink_params)

  	if @drink.save
  		redirect_to drinks_path
  	else
  		render :new
  	end

  end

  private
  	
  	def find_drinks
  		@drink = Drink.find(params[:id])
  	end

  	def drink_params
  		params.require(:drink).permit(:name, :price, :drink_category_id)
  	end

end
