FROM golang:1.19-alpine AS build

WORKDIR /app
COPY . /app
RUN go build -o app .

FROM alpine:3.14
COPY --from=build /app/app /app/
EXPOSE 8080
CMD ["/app/app"]
