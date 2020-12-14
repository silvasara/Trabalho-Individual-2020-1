#!/bin/bash
rm -f /api/tmp/pids/server.pid

echo "Creating database"
rake db:create

echo "Creating migrations"
rake db:migrate

echo "Initializing server"
rails server -b 0.0.0.0
