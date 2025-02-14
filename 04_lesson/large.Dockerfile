FROM golang:1.24.0

WORKDIR /app

COPY main.go main.go
RUN go mod init mywebapp
RUN go get -u github.com/gorilla/mux
RUN go get -u github.com/sirupsen/logrus

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o webapp main.go

CMD [ "/app/webapp" ]