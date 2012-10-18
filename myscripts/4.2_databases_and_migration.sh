#!/bin/bash

pushd ~/myrottenpotatoes
echo Creating new file in db/migrate
if [! -e db/migrate/*create_movies.rb ]; then
	rails generate migration create_movies
fi

echo Next, you need to edit the migration file created in db/migrate
cd db/migrate
gedit *create_movies.rb

echo Commiting migration to database!! Undo with "rake db:rollback".
rake db:migrate
echo "A second call to 'rake db:migrate' will have no effect ('idempotent')"
echo "The call 'rake db:rollback' will irreversibly delete the movies table...?"
echo Why no ActiveRecord::IrreversibleMigration raised?
echo "Oh, are there special requirements on the 'down' method? meh"

popd