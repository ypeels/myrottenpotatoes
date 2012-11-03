#!/bin/bash
pushd ~/myrottenpotatoes

echo
echo My first partial app/views/movies/_movie_form.html.haml
echo "-# Section 7.1 Figure 7.1 (top)"
echo "-# http://pastebin.com/G1c32mQW"
gedit app/views/movies/_movie_form.html.haml

echo
echo DRY out app/views/movies/new.html.haml
echo "-# Section 7.1 Figure 7.1 (middle)"
echo "-# http://pastebin.com/ZNKAws0T"
gedit app/views/movies/new.html.haml

echo
echo DRY out app/views/movies/edit.html.haml
echo "-# Section 7.1 Figure 7.1 (bottom)"
echo "-# http://pastebin.com/pRWLLbNk"
gedit app/views/movies/edit.html.haml

echo
echo Movie table row partial app/views/movies/_movie.html.haml
echo "-# Section 7.2 Figure 7.2"
echo "-# http://pastebin.com/4CLiWA2t"
gedit app/views/movies/_movie.html.haml

echo
echo DRY out app/views/movies/index.html.haml
echo "-# Section 7.2 Figure 7.2 caption"
gedit app/views/movies/index.html.haml

echo
echo Add validations to movie.rb
echo "# Section 7.1 Figure 7.3"
echo "# http://pastebin.com/2GtWshSb - beware errata!!"
gedit app/models/movie.rb

echo
echo "Controller: error handling in case validations fail"
echo "# Section 7.1 Figure 7.4"
echo "# http://pastebin.com/CM6ntZzK"
gedit app/controllers/movies_controller.rb

echo
echo Controller error notification partial
echo "# Section 7.1 after Figure 7.4"
echo "# http://pastebin.com/YGqvV8pg"
gedit app/views/movies/_movie_form.html.haml

echo
echo Screencast 7.1.1 - div.field_with_errors
gedit app/assets/stylesheets/application.css

echo
echo Active Record lifecycle callback - app/models/movie.rb
echo "# Section 7.1 Figure 7.6"
echo "# http://pastebin.com/w4c1nm1q"
gedit app/models/movie.rb

echo
echo My first controller filter - app/controllers/application_controller.rb
echo "# Section 7.1 Figure 7.7"
echo "# http://pastebin.com/MHuGdTUT"
gedit app/controllers/application_controller.rb



popd
