#build stage
FROM golang:alpine as build
WORKDIR /go/app
COPY fullcycle.go .
RUN go build -o ./binary/executable fullcycle.go


#deploy stage
FROM scratch
WORKDIR /app
COPY --from=build /go/app/binary .
CMD [ "./executable" ]