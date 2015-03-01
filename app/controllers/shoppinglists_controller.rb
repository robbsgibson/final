class ShoppinglistsController < ApplicationController

  def index
    @shoppinglists = Shoppinglist.all
  end

   def show
    #@shoppinglist = Shoppinglist.find_by(id: params["id"])
    #@items = @shoppinglist.items
    
    @shoppinglist = Shoppinglist.find_by(id: params["id"])
    @items = @shoppinglist.items
    @recipes = []
    @items.each do |item| 
      @recipes << item.recipe
    end
    @ingredients = []
    @recipes.each do |recipe|
      @ingredients << recipe.ingredients
    end
    @ingredients.flatten!
    @orderedlist = @ingredients.sort_by { |ingredient| ingredient.product.name.downcase }

    #@collapse = {}
    #@collapse = {:name => :quantity }
    #@orderedlist.each do |ingredient|
      #@collapse = ingredient.new {|ingredient,ingredient.product.name| = ingredient.quantity }
     
      #@collapse[:name] << ingredient.product.name
      #@collapse[:quantity] << ingredient.quantity
    #end


        #[Product.find_by(ingredient.product.name)]



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
    @user = User.find_by(id: current_user.id)
    @recipes = @user.recipes
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

