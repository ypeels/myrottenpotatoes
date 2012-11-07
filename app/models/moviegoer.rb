# Section 7.2 Figure 7.9 (top)
# http://pastebin.com/UXQZiBY0
class Moviegoer < ActiveRecord::Base

  # Section 7.3 Figure 7.14(c)
  # http://pastebin.com/WHuX2LcV
  has_many :reviews

  # Section 7.4 Figure 7.17
  # http://pastebin.com/LwQAgaw7
  has_many :movies, :through => :reviews

  # Section 7.2 Figure 7.9 (bottom)
  # http://pastebin.com/LyD2qxRA
  include ActiveModel::MassAssignmentSecurity
  attr_protected :uid, :provider, :name # see text for explanation
  def self.create_with_omniauth(auth)
    
    # erratum - this is incompatible with attr_protected! - need to assign individually
    #Moviegoer.create!(
    #  :provider => auth["provider"],
    #  :uid => auth["uid"],
    #  :name => auth["info"]["name"])
    mg = Moviegoer.new
    mg.provider = auth["provider"]
    mg.uid = auth["uid"]
    mg.name = auth["info"]["name"]
    mg.save
    return mg
      
  end

end
