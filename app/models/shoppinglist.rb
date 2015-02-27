class Shoppinglist < ActiveRecord::Base
  has_many :recipes, through: :items
  has_many :items
  belongs_to :user
  #belongs_to :recipe
  #has_many :ingredients, through :recipes
end
