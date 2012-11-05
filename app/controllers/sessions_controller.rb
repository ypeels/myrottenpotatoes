# Section 7.2 Figure 7.10(b)
# http://pastebin.com/QfYMbdKX
class SessionsController < ApplicationController
  # user shouldn't have to be logged in before logging in! [avoids infinite loop from Fig. 7.7]
  skip_before_filter :set_current_user
  def create
    auth = request.env["omniauth.auth"]
    user = Moviegoer.find_by_provider_and_uid(auth["provider"], auth["uid"]) ||
      Moviegoer.create_with_omniauth(auth)
    session[:user_id] = user.id # store user's primary key
    redirect_to movies_path
  end
  def destroy
    session.delete(:user_id) # delete user's primary key
    flash[:notice] = 'Logged out successfully.'
    redirect_to movies_path
  end
end
