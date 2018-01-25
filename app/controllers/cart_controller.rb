class CartsController < ApplicationController

  get '/cart' do
    redirect_if_logged_out(session)
    # binding.pry
    @user = User.find(session[:user_id])
    @cart_products = Cart.where(user_id: @user.id)

    erb :'carts/cart'
  end

  post '/add_product' do
    Cart.create(params[:cart])
    redirect '/cart'
  end

  post '/increase' do #edit
    cart = Cart.find_by(user_id: params[:cart][:user_id], product_id: params[:cart][:product_id])
    cart.update(quantity: params[:cart][:quantity])
    redirect '/cart'
  end

  post '/decrease' do #edit
    cart = Cart.find_by(user_id: params[:cart][:user_id], product_id: params[:cart][:product_id])
    cart.update(quantity: params[:cart][:quantity])
    redirect '/cart'
  end

end
