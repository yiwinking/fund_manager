class UsersController < ApplicationController
  skip_before_filter :authorize

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      cookies[:auth_token] = @user.auth_token
      redirect_to root_url
    else
      render "new"
    end
  end
end
