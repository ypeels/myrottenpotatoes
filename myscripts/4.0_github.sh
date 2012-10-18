#!/bin/bash
echo "MEH!!! just store all my saasbook changes to 'myrottenpotatoes' with github!!!"
echo "It's NICE to have scripts that record the changes I made, but tedious to run them..."

pushd ~/shared
if [ -d myrottenpotatoes ]; then
	echo Error - You must first delete myrottenpotatoes... From the ashes we will build...
	exit 1
fi

echo
echo Pulling from GitHub...
git clone https://github.com/ypeels/myrottenpotatoes.git
echo "This should create a directory named 'myrottenpotatoes'."
echo "Use 'git push' and 'git pull' to grab changes."

popd
