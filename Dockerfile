FROM ubuntu:latest
MAINTAINER Lucy Veron "lucy.veron@telent.de"
RUN apt-get update -y
RUN apt-get install -y python3-pip python-dev build-essential
COPY . /mypy
WORKDIR /mypy
RUN pip3 install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
