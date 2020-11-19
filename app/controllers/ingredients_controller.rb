class IngredientsController < ApplicationController

  before_action :find_ingredient_id, only: [:edit, :update, :destroy]

  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.save

    redirect_to @ingredients
  end

  def edit
  end

  def update
    @ingredient.update(ingredient_params)

    redirect_to @ingredients
  end

  def destroy
    @ingredient.destroy

    redirect_to @ingredients
  end

  private

  def find_ingredient_id
    @cocktail = Ingredient.find(params[:id])
  end

  def ingredient_params
    params.require(:cocktail).permit(:name)
  end
end
