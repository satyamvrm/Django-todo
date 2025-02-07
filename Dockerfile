FROM python:3.8

RUN mkdir app

WORKDIR /app

RUN pip install django 

COPY . /app/

RUN cd /app/

RUN python manage.py migrate

ENTRYPOINT [ "python", "manage.py", "runserver", "0.0.0.0:8000" ]