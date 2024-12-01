FROM golang:1.23.1

WORKDIR /practicesprint11

COPY . .

RUN go mod tidy 

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /my-app

CMD ["/my-app"]