class StoreController < ApplicationController
  def index
    @products = Product.order(:title)

    if session[:counter].nil?
      counter = 1
      session[:counter] = counter
    else
      session[:counter] += 1
    end

  end
end
