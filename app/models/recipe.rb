class Recipe < ActiveRecord::Base
  belongs_to :user
  has_many :ingredients
  has_many :shoppinglists, through: :items

  #has_many :items

  has_many :products, through: :ingredients
end
