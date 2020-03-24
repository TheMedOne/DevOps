FROM golang:alpine

MAINTAINER medone

# Installing Git
RUN apk update && apk upgrade && \
    apk add --no-cache git

# GOPATH by default is /go
ADD app /go/src/app

RUN go install app

ENTRYPOINT /go/bin/app

EXPOSE 8000
