#!/bin/bash
pushd ~/myrottenpotatoes

echo
echo Add API key
echo Since my code is hosted on Github, I will load from local unshared file instead
echo See my handiwork in config/environment.rb
echo From Railscast 087
echo "#Section 6.7 Figure 6.15"
echo http://pastebin.com/aGFD3CLb
gedit app/models/movie.rb

echo 
echo Fix \'invalid key\' test in spec/models/movie_spec.rb
echo "# Section 6.7 Figure 6.16"
echo http://pastebin.com/RRKJDpbn
gedit spec/models/movie_spec.rb

popd
