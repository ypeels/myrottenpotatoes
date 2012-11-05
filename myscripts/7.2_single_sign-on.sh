#!/bin/bash
pushd ~/myrottenpotatoes

echo
echo First script for CS169.2x!


if [ ! -d app/models/moviegoer.rb ]; then
	echo 
	echo rails generate model Moviegoer name:string provider:string uid:string
	echo "Section 7.2 Figure 7.9 (top)"
	echo http://pastebin.com/UXQZiBY0
	rails generate model Moviegoer name:string provider:string uid:string
fi
	
popd
