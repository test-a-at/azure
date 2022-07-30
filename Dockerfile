FROM golang:1.18.3 as builder

RUN mkdir /app
COPY . /app
WORKDIR /app
RUN go build -o backend



FROM alpine:3.16.1

USER nonroot
COPY --from=builder --chown=nonroot:nonroot /app/backend /
EXPOSE 3000
ENTRYPOINT [ "/backend" ]