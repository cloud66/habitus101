FROM golang:1.5

RUN mkdir -p /go/src/github.com/cloud66
ADD . /go/src/github.com/cloud66/habitus101
WORKDIR /go/src/github.com/cloud66/habitus101

# run with --build host=192.168.99.1
#RUN mkdir -p ~/.ssh
#RUN git config --global url."git@github.com:".insteadOf "https://github.com/"
#RUN ssh-keyscan -H github.com >> ~/.ssh/known_hosts
#ARG host
#RUN wget -O ~/.ssh/id_rsa http://$host:8080/v1/secrets/file/id_rsa && chmod 0600 ~/.ssh/id_rsa && ssh -T git@github.com && rm ~/.ssh/id_rs

RUN go get
RUN go build
