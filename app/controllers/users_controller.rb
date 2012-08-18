class UsersController < ApplicationController
  skip_before_filter :authorize
  before_filter :redirect_to_root, only: [:new, :create], if: :signed_in? 

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
