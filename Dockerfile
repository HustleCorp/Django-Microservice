FROM python:3.7-slim
ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

RUN mkdir /publishing_platform
RUN mkdir /static
WORKDIR /publishing_platform


ADD requirements.txt /publishing_platform
RUN pip install -r requirements.txt

ADD ./publishing_platform /
COPY ./entrypoint.sh /
RUN pip install --upgrade pip


ENTRYPOINT ["/entrypoint.sh"]

