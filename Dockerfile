FROM ubuntu:16.04
MAINTAINER Bartek <bbartek91@gmail.com>

ENV GOVERSION 1.8.3

RUN apt-get update && apt-get install --no-install-recommends -y \
	ca-certificates \
    curl \
    git-core
RUN curl -s https://storage.googleapis.com/golang/go${GOVERSION}.linux-amd64.tar.gz | tar -v -C /usr/local -xz

ENV GOPATH /go
ENV GOROOT /usr/local/go
ENV PATH /usr/local/go/bin:/go/bin:/usr/local/bin:$PATH

RUN mkdir go_server
ADD server.go /go_server
WORKDIR /go_server
RUN go get github.com/go-martini/martini
ENTRYPOINT ["go", "run", "server.go"]