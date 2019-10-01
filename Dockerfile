FROM python:3.7.4-alpine

ENV http_proxy http://dia2.santanderuk.gs.corp:80
ENV https_proxy http://dia2.santanderuk.gs.corp:80
ENV HTTP_PROXY http://dia2.santanderuk.gs.corp:80
ENV HTTPS_PROXY http://dia2.santanderuk.gs.corp:80



RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app



COPY ./requirements.txt .
RUN pip install --proxy http://dia2.santanderuk.gs.corp:80 --trusted-host=pypi.org --trusted-host=files.pythonhosted.org -r requirements.txt

# add app
COPY . .

# run server
CMD python manage.py run -h 0.0.0.0