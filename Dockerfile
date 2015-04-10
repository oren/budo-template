FROM alpine:edge
RUN echo "http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories 
RUN apk update
RUN apk add --update iojs && rm -rf /var/cache/apk/*
WORKDIR /src
COPY . /src
CMD ["node"]
