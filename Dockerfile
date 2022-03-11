FROM golang:1.17.0-alpine

COPY  . /app

WORKDIR /app

COPY go.mod ./

COPY . ./app

RUN go mod download && go mod verify

RUN go build app/main.go

CMD [ "app/main" ]