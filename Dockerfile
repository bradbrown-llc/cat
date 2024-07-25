FROM alpine:3.20.2 AS build
RUN apk add gcc libc-dev
COPY cat.c .
RUN gcc -static cat.c -o cat

FROM scratch
LABEL org.opencontainers.image.source=https://github.com/bradbrown-llc/cat
COPY --from=build /cat /