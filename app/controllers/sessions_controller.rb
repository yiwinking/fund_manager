class SessionsController < ApplicationController
  skip_before_filter :authorize

  def create
    if request.env['omniauth.auth']
      user = User.from_auth(request.env['omniauth.auth'])
      cookies[:auth_token] = user.auth_token
      redirect_to root_url, :notice => "Logged in! Welcome #{user.nickname}"
    else
      user = User.find_by_email(params[:email])
      if user && user.authenticate(params[:password])
        if params[:remember_me]
          cookies.permanent[:auth_token] = user.auth_token
        else
          cookies[:auth_token] = user.auth_token
        end
        redirect_to root_url, :notice => "Logged in! Welcome #{user.nickname}"
      else
        flash.now.alert = "Invalid email or password"
        render "new"
      end
    end
  end

  def destroy
    cookies.delete(:auth_token)
    redirect_to root_url, :notice => "Logged out!"
  end
end
