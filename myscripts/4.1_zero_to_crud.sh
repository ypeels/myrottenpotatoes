#!/bin/bash
pushd /mnt/hgfs/shared

if [ ! -e myrottenpotatoes ]; then
	rails new myrottenpotatoes -T
	ln -s /mnt/hgfs/shared/myrottenpotatoes ~/myrottenpotatoes
fi
cd ~/myrottenpotatoes

echo Add Haml, debugger to Gemfile
echo "# Section 4.1"
echo http://pastebin.com/AGMAxaag
gedit Gemfile

echo "Installing new bundles (as applicable)"
bundle install --without production

echo Add to config/routes.rb!!!
echo "# Section 4.1"
echo http://pastebin.com/piLDY4eM
gedit config/routes.rb

if [ -e public/index.html ]; then
	echo Suppressing public/index.html
	mv public/index.html public/index.html.unused
fi

echo Running rake routes to build new routes from config/routes.rb
echo Ugh, at home, first had to add " require 'rake/dsl_definition' " to Rakefile
rake routes

popd
