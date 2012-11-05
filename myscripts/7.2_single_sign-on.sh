#!/bin/bash
pushd ~/myrottenpotatoes

echo
echo First script for CS169.2x!

if [ ! -e app/models/moviegoer.rb ]; then
	echo 
	echo rails generate model Moviegoer name:string provider:string uid:string
	echo "Section 7.2 Figure 7.9 (top)"
	echo http://pastebin.com/UXQZiBY0
	rails generate model Moviegoer name:string provider:string uid:string
	
	echo 
	echo rake db:migrate
	echo "Section 7.2 Figure 7.9 caption"
	rake db:migrate
fi

echo
echo app/models/moviegoer.rb
echo "# Section 7.2 Figure 7.9 (bottom)"
echo "# http://pastebin.com/LyD2qxRA"
gedit app/models/moviegoer.rb

echo
echo config/routes.rb
echo "# Section 7.2 Figure 7.10(a)"
echo "# http://pastebin.com/pBuULmVY"
gedit config/routes.rb

echo
echo "New file (?) app/controllers/sessions_controller.rb"
echo "# Section 7.2 Figure 7.10(b)"
echo "# http://pastebin.com/QfYMbdKX"
gedit app/controllers/sessions_controller.rb

if [ ! -d app/views/sessions ]; then
	echo
	echo Creating app/views/sessions
	mkdir app/views/sessions
fi

echo 
echo "app/views/sessions/login_form.html.haml [i think??]"
echo "-# Section 7.2 Figure 7.10(c)"
echo "-# http://pastebin.com/sGpXM3kW"
gedit app/views/sessions/login_form.html.haml

echo
echo login partial with appropriate message?
echo "# Section 7.2 Figure 7.10 caption"
gedit app/views/layouts/application.html.haml

	
popd
