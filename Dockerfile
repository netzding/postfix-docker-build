ARG ALPINE_TAG=edge
FROM alpine:${ALPINE_TAG} AS build


RUN apk add --no-cache --update postfix postfix-mysql ca-certificates tzdata
RUN apk upgrade

ENTRYPOINT ["postfix", "start-fg"]
