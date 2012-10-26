#!/bin/bash
pushd ~/myrottenpotatoes

echo
echo Fixture YAML in spec/fixtures/movies.yml
echo "# Section 6.5 Figure 6.10 (top)"
echo http://pastebin.com/piT1LNGX
if [ ! -d spec/fixtures ]; then mkdir spec/fixtures; fi
gedit spec/fixtures/movies.yml

echo 
echo And the corresponding spec/models/movie_spec.rb
echo "# Section 6.5 Figure 6.10 (bottom)"
echo http://pastebin.com/VRqWKPeQ
if [ ! -d spec/models ]; then mkdir spec/models; fi
gedit spec/models/movie_spec.rb

echo
echo Add \"gem \'factory_girl_rails\'\" to Gemfile
echo "# Section 6.5 Figure 6.11 caption"
gedit Gemfile
bundle install --without production

echo
echo Create first factory
echo "# Section 6.5 Figure 6.11 (top)"
echo http://pastebin.com/SnVg4jDz
if [ ! -d spec/factories ]; then mkdir spec/factories; fi
gedit spec/factories/movie.rb

echo 
echo Modify spec/models/movie_spec.rb to use factory instead of fixture
echo "# Section 6.5 Figure 6.11 (bottom)"
echo http://pastebin.com/sgs6Etpr
gedit spec/models/movie_spec.rb


popd
