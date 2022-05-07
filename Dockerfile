FROM python:3.10.4-buster

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN apt update
RUN apt install libpng-dev libopenblas-dev freetype* -y
RUN pip install --no-cache-dir -r requirements.txt
RUN mkdir logs
RUN id

RUN whoami

COPY . .

ENTRYPOINT [ "python", "./train.py" ] 
