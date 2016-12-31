class StoreController < ApplicationController
  def index
  	@products = Product.order(:title)
  	@time = Time.now
  	@count = session[:count] || 0
  	@count +=1
  	session[:count] =@count
  end
end
