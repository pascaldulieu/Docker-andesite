FROM golang:1.11
ENV admin=
COPY start.sh /go/start.sh
RUN chmod +x /go/start.sh && \
    go get github.com/nektro/andesite && \
    go build $GOPATH/src/github.com/nektro/andesite/ && \
    mv /go/andesite /go/src/github.com/nektro/andesite/
WORKDIR /go/src/github.com/nektro/andesite/
EXPOSE 8000
VOLUME [ "/go" ]
ENTRYPOINT [ "/go/start.sh" ] 
