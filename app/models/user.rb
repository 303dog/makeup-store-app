class User < ActiveRecord::Base
  #User has one cart
  has_one :cart
end
