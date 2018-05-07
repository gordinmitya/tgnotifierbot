FROM python:alpine

COPY requirements.txt /tmp/
RUN pip install --no-cache-dir -r /tmp/requirements.txt

ADD ./app .
WORKDIR /app

EXPOSE 7000
CMD ["gunicorn", "app:api", "-b", "127.0.0.1:7000"]