# Section 7.3 Figure 7.14(b)
# http://pastebin.com/GBTCH47f
class Review < ActiveRecord::Base
  belongs_to :movie
  belongs_to :moviegoer
  attr_protected :moviegoer_id # see text
end