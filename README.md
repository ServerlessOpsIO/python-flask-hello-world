# Python Flask Hello World CRUD App

This application is a reference application for the [Hello Serverless blog series](https://www.serverlessops.io/blog/hello-serverless). The application provides a familiar starting point for those beginning to adopt a serverless architecture.

## Launching

__Requirements:__
* Python 3
* [pipenv](https://pypi.org/project/pipenv/)

Launch the application as follows:
```
pipenv install
pipenv shell
gunicorn wsgi:handler
```
