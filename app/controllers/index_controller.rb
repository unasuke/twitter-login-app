class IndexController < ApplicationController
  def index
    @user = User.find_by(id: session[:user_id])
  end
end
