FROM python:3

ENV MANAGE_ARG=server

COPY . /code
WORKDIR /code

RUN pip install -r requirements.txt

CMD python manage.py ${MANAGE_ARG}
