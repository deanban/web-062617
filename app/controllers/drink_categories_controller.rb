class DrinkCategoriesController < ApplicationController
  
  before_action :find_category, only: [:create, :edit, :update, :destroy]
  
  def index
    @drink_categories = DrinkCategory.all 
  end

  def new
    @drink_category = DrinkCategory.new
  end

  def create
    
    @drink_category = DrinkCategory.new(category_params)

    if @drink_category.save
      redirect_to drink_categories_path
    else
      render :new
    end
  end

  def edit

  end

  def update
    @drink_category.update(category_params)
    if @drink_category.save
      redirect_to drink_categories_path
    else 
      render :edit
    end
  end

  def destroy
    @drink_category.destroy
    redirect_to drink_categories_path, notice: "Delete success"
  end

  private

    def find_category
      @drink_category = DrinkCategory.find(params[:id])
    end

    def category_params
      params.require(:drink_category).permit(:name)
    end
end
