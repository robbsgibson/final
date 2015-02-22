class ShoppinglistsController < ApplicationController

  def index
    @shoppinglists = Shoppinglist.all
  end

   def show
    @shoppinglist = Shoppinglist.find_by(id: params["id"])
    @items = @shoppinglist.items
    #@recipe = Recipe.find_by(id: items.recipe_id)
    #@ingredients = @items.recipe.ingredients
    #@recipes = @items.recipe_id 
    #@recipe = Recipe.find_by(id: @items.recipe_id)
    #@ingredients = @recipe.ingredients
  end

  def new
    @shoppinglist = Shoppinglist.new
  end

  def create
    shoppinglist_params = params.require(:shoppinglist).permit!
    Shoppinglist.create(shoppinglist_params)
    redirect_to shoppinglists_path
    #redirect_to items_path
  end

  def edit
    @shoppinglist = Shoppinglist.find_by(id: params["id"])
  end

  def update
    shoppinglist_params = params.require(:shoppinglist).permit!
    @shoppinglist = Shoppinglist.find_by(id: params["id"])
    @shoppinglist.update(shoppinglist_params)
    redirect_to shoppinglists_path
  end

  def destroy
    @shoppinglist = Shoppinglist.find_by(id: params["id"])
    @shoppinglist.destroy
    redirect_to shoppinglists_path
  end

end

