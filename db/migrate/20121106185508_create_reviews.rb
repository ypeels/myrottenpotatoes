class CreateReviews < ActiveRecord::Migration

  # Section 7.3 Figure 7.14(a)
  # http://pastebin.com/Ch2FTEzA
  # Run 'rails generate migration create_reviews' and then
  #   edit db/migrate/*_create_reviews.rb to look like this:
  def up
    create_table 'reviews' do |t|
      t.integer    'potatoes'
      t.text       'comments'
      t.references 'moviegoer' # erratum I found! they had 'moviegoers'
      t.references 'movie' # erratum I found! they had 'movies'
    end
  end
  def down; drop_table 'reviews' ; end

end
