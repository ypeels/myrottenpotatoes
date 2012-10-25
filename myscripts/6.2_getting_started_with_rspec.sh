#!/bin/bash
pushd ~/myrottenpotatoes

echo 
echo Prerequisites below Section 6.2 Figure 6.2
echo Update Gemfile
gedit Gemfile
bundle install --without production

if [ ! -d spec/ ]; then 
	echo 
	echo rails generate rspec:install
	rails generate rspec:install
fi

echo
echo spec/controllers/movies_controller_spec.rb
echo "# Section 6.2 Figure 6.2"
echo http://pastebin.com/Kyie9NhS
if [ ! -d spec/controllers ]; then
	mkdir spec/controllers
fi
gedit spec/controllers/movies_controller_spec.rb

echo
echo Screencast 6.2.1
echo rspec -c -fn spec/controllers/movies_controller_spec.rb
rspec -c -fn spec/controllers/movies_controller_spec.rb

echo Run 'autotest' in the background to have rspec running in the background

popd
