
# from golang:latest

from golang:1.10-alpine

maintainer shigaki

RUN apk update && apk add vim git php-cli

RUN go get -u github.com/gin-gonic/gin \
    && go get -u github.com/jinzhu/gorm \
    && go get github.com/pilu/fresh \
    && go get -u github.com/jinzhu/gorm/dialects/mysql

add . app/

workdir app/

expose 8080

cmd ["go", "run", "main.go"]
