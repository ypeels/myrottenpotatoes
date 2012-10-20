#!/bin/bash
pushd ~/myrottenpotatoes

echo 
echo Create features/search_tmdb.feature
echo "# Section 5.6 Figure 5.6"
echo http://pastebin.com/Qc4rppVL
gedit features/search_tmdb.feature


echo 
echo Not in text - also fix 

#echo
#echo Running Cucumber...
#bundle exec cucumber features/search_tmdb.feature

echo 
echo Edit app/views/movies/index.html.haml
echo "-# Section 5.6 Figure 5.7"
echo http://pastebin.com/viZTPxGN
gedit app/views/movies/index.html.haml

echo 
echo Add "search" route to config/routes.rb
echo "# Section 5.6 Figure 5.8 (bottom)"
echo http://pastebin.com/tCHwFER8
gedit config/routes.rb

echo
echo Add search_tmdb stub to app/controllers/movies_controller.rb
echo "# Section 5.6 Figure 5.8"
echo http://pastebin.com/yVNvBKNe
gedit app/controllers/movies_controller.rb

echo
echo Update search_tmdb.feature to use background to combine user story for happy case
echo "# Section 5.6 Figure 5.9"
echo http://pastebin.com/saRTPLnM
gedit features/search_tmdb.feature

echo Type 'bundle exec cucumber features/search_tmdb.feature' to run BDD tests

popd
