FROM golang:1.21

WORKDIR /app
COPY . .

RUN go mod tidy
RUN mkdir -p safe-files && echo "Hello World" > safe-files/hello.txt

EXPOSE 8080
CMD ["go", "run", "main.go"]
