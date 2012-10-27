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

echo
echo The final spec - test for nonblank but invalid key
echo "# Section 6.7 Figure 6.17"
echo http://pastebin.com/dgSHRKYk
gedit spec/models/movie_spec.rb

echo
echo Fix model to handle new exception type
echo "# Section 6.7 Figure 6.18"
echo http://pastebin.com/1C08dxAu
gedit app/models/movie.rb

echo 
echo Finally, stub the Internet!
echo "# Section 6.7 Figure 6.19"
echo http://pastebin.com/aMnxZz5E
gedit spec/models/movie_spec.rb

popd
