FROM golang:alpine3.19 As base

COPY go.mod .

RUN go mod download

COPY . .

RUN go build 

FROM base as build

COPY --from=base core-calculation .

ENTRYPOINT [ "./core-calculation" ]