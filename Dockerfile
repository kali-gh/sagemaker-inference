FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y python3-pip

COPY . .

RUN pip install -r requirements.txt

ENTRYPOINT [ "gunicorn", "-b", ":8080", "server:app" ]
