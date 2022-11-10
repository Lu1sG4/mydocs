FROM docker.io/nginx

COPY /mkdocs /usr/share/MyDocs

RUN apt update && \
    apt -y install python3-pip && \
    pip install mkdocs-material

COPY /nginx/nginx.conf /etc/nginx/

WORKDIR /usr/share/MyDocs
RUN mkdocs build