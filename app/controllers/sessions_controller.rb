class SessionsController < ApplicationController
  def create
    @user = User.find_or_create_from_auth_hash(auth_hash)
    session[:user_id] = @user.id
    redirect_to root_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  private

  def auth_hash
    Rails.logger.info request.env['omniauth.auth'].to_json
    request.env['omniauth.auth']
  end
end
