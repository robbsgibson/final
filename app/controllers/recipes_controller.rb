class RecipesController < ApplicationController

	def index
     @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find_by(id: params["id"])
    @ingredients = Ingredient.where(recipe_id: @recipe.id)
    @products = []
    @ingredients.each do |ingredient|
      @products << Product.find_by(id: ingredient.product_id)
      @product_name = Product.find_by(id: ingredient.product_id)
    end
  end  

  def new
    
  end

  def create
    
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    
  end

end