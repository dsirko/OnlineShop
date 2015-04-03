class StoreController < ApplicationController
  include CurrentCart
  attr_accessor :count

  def index
    increment_counter
    @products = Product.order(:tittle)
  end

  def increment_counter
    session[:counter] ||= 0
    @count = session[:counter] += 1
    @count >= 5 ? @shown_message = "You've been here #{@count} times" : nil
  end
end