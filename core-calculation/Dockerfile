FROM golang:alpine3.19 As base

WORKDIR /src

COPY go.mod .

RUN go mod download

COPY . .

RUN go build -o /bin/api /api/

FROM base as build

COPY --from=base /bin/api .

ENTRYPOINT [ "./bin/api" ]