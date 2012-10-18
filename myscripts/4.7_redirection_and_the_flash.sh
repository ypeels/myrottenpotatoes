#!/bin/bash
pushd ~/myrottenpotatoes

echo
echo Add create action to Movie controller
echo "# Section 4.7"
echo http://pastebin.com/FFgBP1Jy
gedit app/controllers/movies_controller.rb

echo
echo Add flash to create action in Movie controller
echo "# Section 4.7"
echo http://pastebin.com/N1n4Pkr0
gedit app/controllers/movies_controller.rb

echo
echo Display flash in app/views/layouts/application.html.haml
echo "-# Section 4.7 Figure 4.12"
echo http://pastebin.com/bW1FzEr1
gedit app/views/layouts/application.html.haml

echo
echo Exercise: Style all flash messages as centered red text.
echo "/* Section 4.7 exercise */"
gedit app/assets/stylesheets/application.css

echo
echo Go behold your handiwork!
echo Run \'rails server\' and open localhost:3000


popd
