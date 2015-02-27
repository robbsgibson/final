class Ingredient < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :product
  has_many :items, through: :recipes
  #has_many :items, through: :recipes
  #has_many :shoppinglists, through: :recipes
end
