#!/bin/bash

pushd ~/myrottenpotatoes

echo "Add to end of app/views/movies/index.html.haml"
echo "-# Section 4.6"
echo http://pastebin.com/6wLiit6M
emacs app/views/movies/index.html.haml

echo "Add new() stub to app/controllers/movies_controller.rb"
echo "# Section 4.6"
echo http://pastebin.com/uFdnJNmB
emacs app/controllers/movies_controller.rb

echo "Create Movies' new() view template app/views/movies/new.html.haml"
echo "-# Section 4.6 Figure 4.10"
echo http://pastebin.com/w7jdzawW
echo See also Screencast 4.6.1
emacs app/views/movies/new.html.haml

popd
