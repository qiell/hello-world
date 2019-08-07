FROM ubuntu

COPY ./hello-world /usr/bin/hello-world

ENTRYPOINT ["/usr/bin/hello-world"]
