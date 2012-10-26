#!/bin/bash
pushd ~/myrottenpotatoes

echo 
echo Add your first test to spec/controllers/movies_controller_spec.rb
echo "# Section 6.3 Figure 6.4"
echo http://pastebin.com/cd4pVa0a
gedit spec/controllers/movies_controller_spec.rb

echo 
echo Screencast 6.3.1 .rspec settings
gedit .rspec

echo
echo "# Screencast 6.3.1: comment out MoviesController#search_tmdb() body"
echo "and proceed with Screencast starting ~3:00"
gedit app/controllers/movies_controller.rb

if [ ! -e app/views/movies/search_tmdb.html.haml ]; then
	echo
	echo Screencast 6.3.1 create template for search_tmdb
	touch app/views/movies/search_tmdb.html.haml
fi

echo
echo Finish first controller test
echo "# Section 6.3 Figure 6.5"
echo http://pastebin.com/vDRTDrkw
gedit spec/controllers/movies_controller_spec.rb

echo 
echo TDD in action: finish controller method!
echo "# Section 6.3 last words"
echo http://pastebin.com/MDsSSwU1
echo also, http://pastebin.com/5uacfzyZ
gedit app/controllers/movies_controller.rb


popd
