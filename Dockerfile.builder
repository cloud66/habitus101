FROM golang:1.5

RUN mkdir -p /go/src/github.com/cloud66
ADD . /go/src/github.com/cloud66/habitus101
WORKDIR /go/src/github.com/cloud66/habitus101

RUN go get
RUN go build
