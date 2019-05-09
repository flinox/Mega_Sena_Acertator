
FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive
ENV GOPATH /go
ENV PATH ${PATH}:${GOPATH}/bin:/usr/local/go/bin


RUN apt-get update && apt-get install -y apt-utils wget

RUN wget https://dl.google.com/go/go1.12.5.linux-amd64.tar.gz -P /tmp/ && tar -C /usr/local -xzf /tmp/go1.12.5.linux-amd64.tar.gz && go version

WORKDIR /go

# docker build -t flinox/mega_acertator .
# docker run -it --rm --hostname mega_acertator --name mega_acertator -v /c/Users/fernando.tomazzo/OneDrive/github.com/flinox/Mega_Sena_Acertator:/go/src/mega flinox/mega_acertator

