class Ingredient < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :product
  #has_many :shoppinglists, through: :recipes
end
