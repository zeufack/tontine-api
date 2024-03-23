FROM golang:alpine3.19 As buildStage

COPY go.mod .

RUN go mod download

COPY . .

RUN go build 

FROM buildStage as runStage

COPY --from=buildStage core-calculation .

ENTRYPOINT [ "./core-calculation" ]