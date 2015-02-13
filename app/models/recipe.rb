class Recipe < ActiveRecord::Base
  belongs_to :user
  has_many :ingredient
end
