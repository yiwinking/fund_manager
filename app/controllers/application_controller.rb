# -*- encoding: utf-8 -*-
class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authorize

  helper_method :current_user, :signed_in?

  private
  def current_user
    @current_user ||= User.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token]
  end

  def signed_in?
    current_user.present?
  end

  def redirect_to_root
    redirect_to root_path
  end

  def authorize
    redirect_to login_url, alert: '该页面需要登录才可访问，请登录！' if current_user.nil?
  end
end
