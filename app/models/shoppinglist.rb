class Shoppinglist < ActiveRecord::Base
  has_many :recipes
  #belongs_to :recipe
  #has_many :ingredients, through :recipes
end
