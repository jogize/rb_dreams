# Build Stage
FROM golang:1.24.0 AS builder

WORKDIR /app

COPY main.go .

RUN go mod init mywebapp && \
    go get -u github.com/gorilla/mux github.com/sirupsen/logrus && \
    CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o webapp main.go

FROM alpine:latest

WORKDIR /app

COPY --from=builder /app/webapp .

CMD [ "/app/webapp" ]
