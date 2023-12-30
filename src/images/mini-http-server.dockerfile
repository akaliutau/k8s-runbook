# Image name: k8stest/mini-http-server
FROM alpine

# Message to send out as response on any request
ENV MESSAGE="Hello!"

RUN apk update && apk add netcat-openbsd

CMD [ \
  "/bin/ash", "-c", \
  "while true ; do \
     echo -e \"HTTP/1.1 200 OK\n\n $MESSAGE\n\" | nc -l -p 8080 -q 1; \
  done \
"]
