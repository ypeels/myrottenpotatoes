class ApplicationController < ActionController::Base
  protect_from_forgery

  # Section 7.1 Figure 7.7 
  # http://pastebin.com/MHuGdTUT
  # from Section 7.1 summary:
  # A filter declared in a controller affects all actions in that controller
  # and a filter declared in ApplicationController affects all actions in all controllers, 
  # unless :only or :except are specified
  before_filter :set_current_user
  protected # prevents method from being invoked by a route
  def set_current_user
    # we exploit the fact that find_by_id(nil) returns nil    
    @current_user ||= Moviegoer.find_by_uid(session[:user_id])
    
    # login_path(.) argument - my extension of the 10/26/2012 14:15:44 erratum
    redirect_to login_path(:provider => 'twitter') and return unless @current_user
  end
end



