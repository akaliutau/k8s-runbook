# Image name: akaliutau/mini-http-server
FROM alpine

ENV RESP_MESSAGE="Hello from mini-http-server!"

RUN apk update && apk add netcat-openbsd

CMD [ \
  "/bin/ash", "-c", \
  "while true ; do \
     echo -e \"HTTP/1.1 200 OK\n\n $RESP_MESSAGE\n\" | nc -l -p 8080 -q 1; \
  done \
"]
