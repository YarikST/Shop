class StoreController < ApplicationController
	include CurrentCart
 before_action :set_cart
  def index
  	@products = Product.order(:title)
  	@time = Time.now
  	@count = session[:count] || 0
  	@count +=1
  	session[:count] =@count
  end
end
