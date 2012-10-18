#!/bin/bash

pushd ~/myrottenpotatoes

echo
echo Create \"Edit\" link in app/views/movies/show.html.haml 
echo "-# Section 4.8"
echo http://pastebin.com/ZD1y6TYc
gedit app/views/movies/show.html.haml

echo 
echo Create app/views/movies/edit.html.haml
echo "-# Section 4.8 Figure 4.13"
echo http://pastebin.com/PhapSLEN
gedit app/views/movies/edit.html.haml

echo
echo "Add edit() and create() to app/controllers/movies_controller.rb"
echo "# Section 4.8"
echo http://pastebin.com/jdTS5P7Q
gedit app/controllers/movies_controller.rb

echo
echo Behold your handiwork! \'rails server\' and localhost:3000/movies
echo Movies should be editable now.

echo
echo ----
echo And finally the D in CRUD
echo ----

echo 
echo "Add destroy() to app/controllers/movies_controller.rb"
echo "# Section 4.8 "
echo http://pastebin.com/8ZYbFUcb
gedit app/controllers/movies_controller.rb

echo
echo Add Delete link to app/views/movies/show.html.haml
echo "-# Section 4.8"
echo http://pastebin.com/Cr8EXQaH
gedit app/views/movies/show.html.haml

echo 
echo Recant and change Delete link to button with confirmation
echo "-# Section 4.8"
echo http://pastebin.com/mTXuE5up
gedit app/views/movies/show.html.haml

echo 
echo "Exercise: Edit/Destroy links from index"
echo "-# Section 4.8 Exercise"
gedit app/views/movies/index.html.haml

popd