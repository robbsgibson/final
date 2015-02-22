class Item < ActiveRecord::Base
  belongs_to :shoppinglist
  belongs_to :recipe
end
