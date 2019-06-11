FROM tiangolo/uwsgi-nginx-flask:python3.7

MAINTAINER OUKAJA Youssef Mehdi "oukaja.mehdi@gmail.com"

RUN apt-get upgrade -y && \  
    apt-get update -y && \
    apt-get install -y tesseract-ocr wget git libsm6 libxext6 libxrender-dev

WORKDIR /home

RUN git clone https://github.com/oukaja/MS-OCR.git

WORKDIR /home/MS-OCR 

RUN pip3 install -r requirements.txt

RUN mv /home/MS-OCR /app

WORKDIR /app

EXPOSE 80

ENV MESSAGE "hello from Docker"
