class RecipesController < ApplicationController

	def index
     @user = User.find_by(id: current_user.id)
     @recipes = @user.recipes
  end

  def show
    
    @recipe = Recipe.find_by(id: params["id"])
    @ingredients = @recipe.ingredients
    
    #@user = User.find_by(id: params["id"])
    #@userrecipes = @user.recipe

    #@ingredients = Ingredient.where(recipe_id: @recipe.id)
    #@products = []
    #@ingredients.each do |ingredient|
      #@products << Product.find_by(id: ingredient.product_id)
      #@product_name = Product.find_by(id: ingredient.product_id)
    #end
  end  

  def new
    @recipe = Recipe.new
  end

  def create
    recipe_params = params.require(:recipe).permit!
    Recipe.create(recipe_params)
    redirect_to recipes_path
  end

  def edit
    @recipe = Recipe.find_by(id: params["id"])
  end

  def update
    recipe_params = params.require(:recipe).permit!
    @recipe = Recipe.find_by(id: params["id"])
    @recipe.update(recipe_params)
    redirect_to recipes_path
  end

  def destroy
    @recipe = Recipe.find_by(id: params["id"])
    @recipe.destroy
    redirect_to recipes_path
  end

end