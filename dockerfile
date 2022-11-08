FROM python:3.12.0a1-alpine3.16

ENV PORT="8080" \
    HTML="Hello World! This is flask"

COPY requirements.txt /requirements.txt
COPY app.py /app.py

RUN pip install -r /requirements.txt
CMD [ "python", "app.py" ]