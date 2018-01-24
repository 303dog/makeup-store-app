class Product < ActiveRecord::Base
  # products belongs to a cart
  belongs_to :cart
end
