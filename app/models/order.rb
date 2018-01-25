class Order < ActiveRecord::Base
  # belongs to one user
  # not getting in to tracking products, etc. keeping it simple!
  belongs_to :user
end
