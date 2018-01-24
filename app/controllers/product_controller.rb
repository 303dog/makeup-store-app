class ProductsController < ApplicationController

  # **** ALL PRODUCTS / LANDING PAGE **** Viewable without account
  get '/products' do
    @products = Product.all
    erb :'products/show_all'
  end

  # ***** SORT *****

  get '/products/lipstick' do
    @products = Product.where(category: "lipstick")
    erb :'products/show_all'
  end

  get '/products/eyeshadow' do
    @products = Product.where(category: "eyeshadow")
    erb :'products/show_all'
  end

  get '/products/blush' do
    @products = Product.where(category: "blush")
    erb :'products/show_all'
  end

  # ***** PRODUCT VIEW *****
  get '/products/:slug' do
    @product = Product.find_by_slug(params[:slug])

    erb :'products/product'
  end


end
