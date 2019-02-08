#!env /bin/sh

pipenv install --deploy --system
pipenv run gunicorn -c gunicorn.conf.py --reload --log-config logging.conf wsgi:app
