#!/bin/sh

flask db upgrade

exec gunicorn "app:create_app()" --bind 0.0.0.0:80