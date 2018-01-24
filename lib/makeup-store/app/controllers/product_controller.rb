class ProductsController < ApplicationController

  # **** ALL PRODUCTS / LANDING PAGE **** Viewable without account
  get '/' do
    erb :'products/products'
  end

end
