class StoreController < ApplicationController
  skip_before_action :authorize
  include CurrentCart
  before_action :set_cart

  attr_accessor :count

  def index
    increment_counter
    if params[:set_locale]
      redirect_to store_url(locale: params[:set_locale])
    else
      @products = Product.order(:tittle)
    end
  end

  def increment_counter
    session[:counter] ||= 0
    @count = session[:counter] += 1
    @count >= 5 ? @shown_message = "You've been here #{@count} times" : nil
  end
end