# Sessions Controller
class SessionsController < ApplicationController
  def new
    render layout: 'public'
  end

  def create
    @user = User.find_by(email: params[:email].downcase)
    if @user && @user.authenticate(params[:password])
      if @user.activated?
        log_in @user
        params[:remember_me] == '1' ? remember(@user) : forget(@user)
        redirect_back_or @user
      else
        flash[:warning] = 'Account not activated. Check your email for the activation link.'
        redirect_to root_url
      end
    else
      flash.now[:alert] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
