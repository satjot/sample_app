class SessionsController < ApplicationController

  def new
    @title = "Sign in"
    render 'new'
  end
  
  def create
    user = User.authenticate(params[:session][:email],
                             params[:session])
    if user.nil?
      flash.now[:error] = "Invalid email/password combination"
      @title = "Sign in"
      render 'new'
    else
      # handle signin
    end
  end
  
  def destroy
  end

end