class ShoppinglistsController < ApplicationController

  def index
    @shoppinglists = Shoppinglist.all
  end

   def show
    @shoppinglist = Shoppinglist.find_by(id: params["id"])
    #@recipes = @shoppinglist.recipes 
  end

  def new
    @shoppinglist = Shoppinglist.new
  end

  def create
    shoppinglist_params = params.require(:shoppinglist).permit!
    Shoppinglist.create(shoppinglist_params)
    redirect_to shoppinglists_path
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

