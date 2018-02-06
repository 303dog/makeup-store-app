class CartItem < ActiveRecord::Base
  # cart belongs to a user
  # cart has many products
  belongs_to :user
  has_many :products
end
