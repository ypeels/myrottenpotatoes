#!/bin/bash
pushd ~/myrottenpotatoes

if [ ! -e db/migrate/*_create_reviews.rb ]; then

	echo
	echo "Not in book: add gem 'hashie' to Gemfile"
	gedit Gemfile
	
	echo
	echo bundle install
	bundle install --without production
	
	echo
	echo rails generate migration create_reviews
	rails generate migration create_reviews
	
fi

echo
echo "Migration: Create Reviews - db/migrate..."
echo "# Section 7.3 Figure 7.14(a)"
echo "# http://pastebin.com/Ch2FTEzA"
gedit db/migrate/*_create_reviews.rb

echo
echo rake db:migrate
rake db:migrate

echo
echo New model Review in app/models/review.rb
echo "# Section 7.3 Figure 7.14(b)"
echo "# http://pastebin.com/WHuX2LcV"
gedit app/models/review.rb

echo
echo "has_many :reviews inside class declaration"
echo "# Section 7.3 Figure 7.14(c)"
echo "# http://pastebin.com/WHuX2LcV"
gedit app/models/movie.rb
gedit app/models/moviegoer.rb

echo
echo Now the code in Section 7.3 Figure 7.13 should work...
echo although first you should create these users
echo "alice_uid = 25423"
echo "bob_uid = 262"
echo 'Moviegoer.create_with_omniauth "provider"=>"twitter", "uid"=>alice_uid, "info"=>{"name"=>"Alice from rails console"}'
echo 'Moviegoer.create_with_omniauth "provider"=>"twitter", "uid"=>bob_uid, "info"=>{"name"=>"Bob from rails console"}'
echo "Also use alice = Moviegoer.find_by_uid(alice_uid)"
echo "Also use bob = Moviegoer.find_by_uid(bob_uid)"
echo "what the hell here's my full setup after that"
echo "aladdin = Movie.find_by_title 'Aladdin'"
echo "alice = Moviegoer.find_by_uid 25423"
echo "bob = Moviegoer.find_by_uid 262"
echo "alice_review = Review.new :potatoes => 5"
echo "bob_review = Review.new :potatoes => 4"
rails console


popd
