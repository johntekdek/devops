FROM python:3.7.4-alpine

WORKDIR /usr/src/app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt .
RUN pip install -r requirements.txt

# add app
COPY . .

# run server
CMD python manage.py run -h 0.0.0.0