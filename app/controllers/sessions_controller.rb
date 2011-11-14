class SessionsController < ApplicationController

  skip_before_filter :ensure_login, only: [:new, :create]

  def create
    if user = User.find_by_username_and_password(params[:username],
                                                 params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: "Logged in successfully"
    else
      flash.now[:alert] = "Invalid username/password combination"
      render action: "new"
    end

  end

  def destroy
    reset_session
    redirect_to login_path, notice: "You have been logged out"
  end

  def new
    # Nothing to do here and technically speaking this
    # method is not really needed - here for clarity...
  end
end
