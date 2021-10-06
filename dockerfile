FROM python:3

RUN apt-get update
# RUN apt-get install -y nginx
# RUN apt-get install -y netcat

WORKDIR /project

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY ./django-todolist .
RUN pip install -r requirements.txt

CMD gunicorn --bind 0.0.0.0:8000 dockertest.wsgi
