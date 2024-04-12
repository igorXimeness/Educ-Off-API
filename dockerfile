FROM golang:1.22-alpine 

WORKDIR /app 

COPY go.mod ./

RUN go mod download 

COPY . .

RUN go build -o main ./cmd/educ-off-api/main.go

EXPOSE 8080

CMD ["./main"]


