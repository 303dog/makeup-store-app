class CartsController < ApplicationController

  get '/cart' do
    redirect_if_logged_out(session)
    @user = User.find(session[:user_id])
    @cart_products = Cart.where(user_id: @user.id)

    erb :'carts/cart'
  end

  post '/add_product' do
    Cart.create(params[:cart])
    redirect '/cart'
  end

end
