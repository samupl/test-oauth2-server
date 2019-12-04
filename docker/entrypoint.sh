#!/bin/sh

set -e

cd /app
if [ $# -eq 0 ]; then
    # No arguments, simply run the app
    python /app/manage.py migrate
    python /app/manage.py initialize
    nginx -g "daemon off;" &                            # Start http web-server
    # exec uvicorn oauth2_server.asgi:application

    # Start uvicorn
    exec gunicorn -w 4 -k uvicorn.workers.UvicornWorker oauth2_server.asgi:application

else
    # Pass all arguments to manage.py
    python /app/manage.py "${@}"
fi
