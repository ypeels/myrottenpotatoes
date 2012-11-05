# Section 7.2 Figure 7.9 (top)
# http://pastebin.com/UXQZiBY0
class Moviegoer < ActiveRecord::Base

  # Section 7.2 Figure 7.9 (bottom)
  # http://pastebin.com/LyD2qxRA
  include ActiveModel::MassAssignmentSecurity
  attr_protected :uid, :provider, :name # see text for explanation
  def self.create_with_omniauth(auth)
    Moviegoer.create!(
      :provider => auth["provider"],
      :uid => auth["uid"],
      :name => auth["info"]["name"])
  end

end
