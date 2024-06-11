FROM python:3.6-slim
ENV TZ=America/Sao_Paulo
RUN mkdir -p /opt/djangoSIGE/
WORKDIR /opt/djangoSIGE/
COPY requirements.txt /opt/djangoSIGE/
RUN apt update && apt upgrade -y && \
    apt install -y gcc libpq-dev python-dev libxml2-dev libxslt1-dev libldap2-dev libsasl2-dev libc-dev musl-dev \
    && pip3 install --upgrade pip \
    && pip3 install -r requirements.txt \
    && pip3 install --upgrade setuptools \
    && pip3 install gunicorn psycopg2