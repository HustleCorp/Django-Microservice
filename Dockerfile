FROM python:3.7-slim
ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

RUN mkdir /publishing_platform
RUN mkdir /static
WORKDIR /publishing_platform
ADD ./publishing_platform /publishing_platform
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

