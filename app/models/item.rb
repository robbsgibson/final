class Item < ActiveRecord::Base
  belongs_to :shoppinglist
  belongs_to :recipe
  has_many :ingredients, through: :recipes
end
