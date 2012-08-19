# encoding: utf-8
class UsersController < ApplicationController
  skip_before_filter :authorize, only: [:new, :create]
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

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      redirect_to root_path, notice: '个人信息更新成功！'
    else
      render :edit
    end
  end
end
