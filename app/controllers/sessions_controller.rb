class SessionsController < ApplicationController
  def new
  end

  def create
  end

  def destroy
    session[:user_id] = nil
    redirect_to store_url, notice: "Sission fihished"
  end
end
