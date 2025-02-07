FROM python:3.8

COPY requirement.txt /app

WORKDIR /app

RUN pip install -r requirement.txt

COPY . /app/

RUN python manage.py migrate

ENTRYPOINT [ "python", "manage.py", "runserver", "0.0.0.0:8000" ]