#!/bin/bash
pushd ~/myrottenpotatoes

echo
echo Search TMDb spec: spec/models/movie_spec.rb
echo "# Section 6.6 Figure 6.12 (top)"
echo http://pastebin.com/rQfFZhgJ
gedit spec/models/movie_spec.rb

echo
echo Test-driven code in app/models/movie.rb
echo "# Section 6.6 Figure 6.12 (bottom)"
echo http://pastebin.com/B1wqGuAj
gedit app/models/movie.rb

echo
echo Revised spec for valid/invalid API keys
echo "# Section 6.6 Figure 6.13"
echo http://pastebin.com/TJXJk5wQ
gedit spec/models/movie_spec.rb

echo
echo Test-driven code in app/models/movie.rb
echo "# Section 6.6 Figure 6.14"
echo http://pastebin.com/5LhUz8uV
gedit app/models/movie.rb

popd
