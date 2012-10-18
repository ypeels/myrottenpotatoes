#!/bin/bash
pushd ~/myrottenpotatoes

echo Fill in app/controllers/movie_controller.rb from 
echo "#Section 4.4 Figure 4.5"
echo http://pastebin.com/KGWiEt09
gedit app/controllers/movies_controller.rb

echo Fill in app/views/movies/index.html.haml from 
echo "-#Section 4.4 Figure 4.5"
echo http://pastebin.com/Bz9fuk34
if [ ! -d app/views/movies ]; then
	mkdir app/views/movies
fi
gedit app/views/movies/index.html.haml

if [ -e app/views/layouts/application.html.erb ]; then
	echo Exiling app/views/layouts/application.html.erb
	mv app/views/layouts/application.html.erb app/views/layouts/application.html.erb.unused
fi;
echo Fill in app/views/layouts/application.html.haml from 
echo "-#Section 4.4 Figure 4.7"
echo http://pastebin.com/0RU47cUy
echo Also watch Screencast 4.4.1
gedit app/views/layouts/application.html.haml

echo "Add to app/controllers/movies_controller.rb show() method"
echo "# Section 4.4 Figure 4.8"
echo http://pastebin.com/TESrHmkk
gedit app/controllers/movies_controller.rb

echo Fill in app/views/movies/show.html.haml
echo "-#Section 4.4 Figure 4.9"
echo http://pastebin.com/hnmsYYB5
gedit app/views/movies/show.html.haml

echo Add to app/assets/stylesheets/application.css
echo "/* Section 4.4 end */"
echo http://pastebin.com/LsLngdin
gedit app/assets/stylesheets/application.css

popd