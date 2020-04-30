FROM ubuntu:latest
MAINTAINER Lucy Veron "lucy.veron@telent.de"
RUN apt-get update -y
RUN apt-get install -y python3-pip python-dev build-essential
RUN mkdir /build
COPY requirements.txt /build
COPY app.py /build
WORKDIR /build
RUN pip3 install -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["app.py"]
