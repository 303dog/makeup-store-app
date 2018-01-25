class ProductsController < ApplicationController

  # **** ALL PRODUCTS / LANDING PAGE **** Viewable without account
  get '/products' do
    @name = "All Products"
    @products = Product.all
    erb :'products/show_all'
  end

  # ***** SORT *****

  get '/products/lipstick' do
    @name = "All Lipsticks"
    @products = Product.where(category: "lipstick")
    erb :'products/show_all'
  end

  get '/products/eyeshadow' do
    @name = "All Eyeshadows"
    @products = Product.where(category: "eyeshadow")
    erb :'products/show_all'
  end

  get '/products/blush' do
    @name = "All Blushes"
    @products = Product.where(category: "blush")
    erb :'products/show_all'
  end

  # ***** PRODUCT VIEW *****
  get '/products/:slug' do
    # binding.pry
    redirect_if_logged_out(session)
    @user = User.find(session[:user_id])
    @product = Product.find_by_slug(params[:slug])

    erb :'products/product'
  end


end
