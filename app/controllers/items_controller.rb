class ShoppinglistsController < ApplicationController

  def index
    @items = Item.all
  end

   def show
    @item = Item.find_by(id: params["id"]) 
  end

  def new
    @item = Item.new
  end

  def create
    item_params = params.require(:item).permit!
    Item.create(item_params)
    redirect_to shoppinglists_path
  end

  def edit
 
  end

  def update
    
  end

  def destroy
   
  end

end