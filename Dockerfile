# build: docker build -t $(basename $(pwd)) -f Dockerfile .
# run: docker run -p 9080:8080 -ti --rm $(basename $(pwd))

FROM python:3.6-alpine
EXPOSE 8080/tcp

# For non-Alpine / Busybox containers
#RUN adduser --disabled-password --gecos 'application runner' app
RUN adduser -D -g 'application runner' app

RUN apk update
ADD . /opt/app
WORKDIR /opt/app
RUN apk add gcc
RUN apk add libc-dev
RUN pip install pipenv
RUN pipenv install --deploy --system
#RUN apk del libc-dev
#RUN apk del gcc

USER app
ENTRYPOINT [ "pipenv", "run", "gunicorn", "-c", "gunicorn.conf.py", "--log-config", "logging.conf", "wsgi:app"]

