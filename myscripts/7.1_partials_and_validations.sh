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
gedit app/views/movies.edit.html.haml

popd
