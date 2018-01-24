class ProductsController < ApplicationController
  # **** ALL PRODUCTS / LANDING PAGE **** Viewable without account
  get '/products' do
    @products = Product.all
    erb :'products/show_all'
  end

  get '/products/:slug'

end
