# -*- encoding: utf-8 -*-
class SessionsController < ApplicationController
  skip_before_filter :authorize
  before_filter :redirect_to_root, only: [:new, :create], if: :signed_in? 

  def create
    if request.env['omniauth.auth']
      user = User.from_auth(request.env['omniauth.auth'])
      cookies[:auth_token] = user.auth_token
      redirect_to root_url, :notice => "成功登录! 欢迎 #{user.nickname}!"
    else
      user = User.find_by_email(params[:email])
      if user && user.authenticate(params[:password])
        if params[:remember_me]
          cookies.permanent[:auth_token] = user.auth_token
        else
          cookies[:auth_token] = user.auth_token
        end
        redirect_to root_url, :notice => "成功登录! 欢迎 #{user.nickname}!"
      else
        flash.now.alert = "请输入正确的邮箱和密码！"
        render "new"
      end
    end
  end

  def destroy
    cookies.delete(:auth_token)
    redirect_to login_url, :notice => "成功退出!"
  end
end
