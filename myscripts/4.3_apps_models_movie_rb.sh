#!/bin/bash

pushd ~/myrottenpotatoes

if [ -e app/models/movie.rb ]; then
    echo error: app/models/movie.rb already exists
else
	echo Creating app/models/movie.rb
	echo class Movie \< ActiveRecord\:\:Base > app/models/movie.rb
	echo end >> app/models/movie.rb
fi

echo And now some stuff you are going to have to type into an interactive Rails prompt.
echo http://pastebin.com/2HETvZyz - 
echo just a demo with no net changes...feel free to skip.
rails console

echo Now you need to update db/seeds.rb
echo "#Section 4.3 Figure 4.4"
echo http://pastebin.com/hNB7kpWz
gedit db/seeds.rb

echo Running rake db:seed
rake db:seed


popd