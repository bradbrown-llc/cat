FROM alpine:3.20.2
RUN apk add gcc libc-dev
COPY cat.c .
RUN gcc -static cat.c -o cat