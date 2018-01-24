class ProductsController < ApplicationController

  def slug(id)
    p = Product.find(id)
    brand = p.brand.gsub(" ", "-")
    name = p.name.gsub(" ", "-")
    "#{brand}-#{name}"
  end
  # **** ALL PRODUCTS / LANDING PAGE **** Viewable without account
  get '/products' do
    @products = Product.all
    erb :'products/show_all'
  end

end
