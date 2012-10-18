#!/bin/bash
pushd ~/shared/myrottenpotatoes

echo
echo "# Section 5.4 add Cucumber and Capybara to Gemfile"
echo http://pastebin.com/MMZdRmB3
gedit Gemfile

echo
echo "Running bundle install to 'commit' Gemfilechanges"
bundle install --without production

if [ ! -e script/cucumber ]; then
	echo 
	echo Setting up Cucumber and Capybara boilerplate
	rails generate cucumber:install capybara
	rails generate cucumber_rails_training_wheels:install
fi

if [ ! -e db/test.sqlite3 ]; then
	echo Initializing test database.
	rake db:test:prepare
fi

echo
echo Create your first user story.
echo "# Section 5.4 Figure 5.2"
echo http://pastebin.com/mqQncg1s
gedit features/AddMovie.feature

echo
echo Now performing steps from Screencast 5.4.1
bundle exec cucumber

popd
