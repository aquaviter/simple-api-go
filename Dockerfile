FROM golang:1.7

RUN mkdir -p /go/src

ENV GOPATH=/go
ENV PATH=$GOPATH/bin:$PATH

RUN mkdir -p $GOPATH/src/app
ADD ./src $GOPATH/src/app

WORKDIR $GOPATH/src/app

RUN go build -o myapp .

CMD ["/go/src/app/myapp"]
