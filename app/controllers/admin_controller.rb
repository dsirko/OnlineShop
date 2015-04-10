class AdminController < ApplicationController
  def index
    @total_ordes = Order.count
  end
end
