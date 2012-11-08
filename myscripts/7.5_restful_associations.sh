#!/bin/bash
pushd ~/myrottenpotatoes

echo
echo Create nested resource Reviews
echo "# Section 7.5 beginning"
echo "# http://pastebin.com/cmB747Ta"
gedit config/routes.rb

echo
echo Create ReviewsController
echo "# Section 7.5 Figure 7.19(a)"
echo "# http://pastebin.com/qwzV1tZb"
gedit app/controllers/reviews_controller.rb

echo
echo "Create Reviews 'New' template"
echo "-# Section 7.5 Figure 7.19(b)"
echo "-# http://pastebin.com/YSQsXt47"
if [ ! -d app/views/reviews ]; then mkdir app/views/reviews; fi
gedit app/views/reviews/new.html.haml

echo
echo Add a snippet to app/views/movies/show.html.haml to enter review-land
echo "-# Section 7.5 end"
echo "-# http://pastebin.com/RfYpnTKx"
gedit app/views/movies/show.html.haml

popd
