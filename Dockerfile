FROM golang:1.17.0-alpine

WORKDIR /app

COPY go.mod ./
COPY . ./

RUN go mod download

RUN go mod download && go mod verify

RUN go build ./main.go

CMD [ "./main" ]