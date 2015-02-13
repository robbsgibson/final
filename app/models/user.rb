class User < ActiveRecord::Base
  has_many :recipe
end
