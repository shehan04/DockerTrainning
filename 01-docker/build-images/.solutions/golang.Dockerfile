FROM golang:1.10

WORKDIR /
COPY . .
RUN go get -d github.com/gorilla/mux

EXPOSE 4200

CMD ["go","run","api.go"]
