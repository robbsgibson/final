class Recipe < ActiveRecord::Base
  belongs_to :user
  belongs_to :mealtype
  #has_many :ingredients, through: :recipes
  has_many :shoppinglists, through: :items

  #has_many :items
  has_many :ingredients
  has_many :products, through: :ingredients
end
