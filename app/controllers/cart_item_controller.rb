class CartItemsController < ApplicationController

  get '/cart' do
    redirect_if_logged_out(session)
    @user = User.find(session[:user_id])
    @cart_products = CartItem.where(user_id: @user.id)

    erb :'cart_items/cart_items'
  end

  post '/add_product' do
    c = CartItem.new(params[:cart])
    # binding.pry

    if session[:user_id] == params[:cart][:user_id].to_i && c.save
      redirect '/cart'
    else
      redirect '/products'
    end

  end

  post '/cart/edit_quantity' do #edit
    cart_item = CartItem.find_by(user_id: params[:cart][:user_id], product_id: params[:cart][:product_id])
    cart_item.update(quantity: params[:cart][:quantity])
    redirect '/cart'
  end

  post '/delete' do
    cart_item = CartItem.find_by(user_id: params[:cart][:user_id], product_id: params[:cart][:product_id])
    cart_item.delete
    redirect '/cart'
  end

end
