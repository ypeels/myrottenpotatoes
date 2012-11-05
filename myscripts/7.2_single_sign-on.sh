#!/bin/bash
pushd ~/myrottenpotatoes

echo
echo First script for CS169.2x!

if [ ! -e app/models/moviegoer.rb ]; then
	echo 
	echo rails generate model Moviegoer name:string provider:string uid:string
	echo "Section 7.2 Figure 7.9 (top)"
	echo http://pastebin.com/UXQZiBY0
	rails generate model Moviegoer name:string provider:string uid:string
	
	echo 
	echo rake db:migrate
	echo "Section 7.2 Figure 7.9 caption"
	rake db:migrate
fi

echo
echo app/models/moviegoer.rb
echo "# Section 7.2 Figure 7.9 (bottom)"
echo "# http://pastebin.com/LyD2qxRA"
gedit app/models/moviegoer.rb

	
popd
