FROM golang:1.18.3 as builder

ARG CGO_ENABLED=0

RUN mkdir /app

COPY . /app

WORKDIR /app

RUN go build -o backend

EXPOSE 3000



FROM gcr.io/distroless/static-debian11

WORKDIR /

COPY --chown=nonroot:nonroot --from=builder /app/backend /

ENTRYPOINT [ "/backend" ]
