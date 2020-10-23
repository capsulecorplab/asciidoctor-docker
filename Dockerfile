FROM anapsix/alpine-java:latest

# Install plantuml
RUN apk add --no-cache graphviz curl \
  && curl -L http://sourceforge.net/projects/plantuml/files/plantuml.jar/download -o ~/plantuml.jar \
  && apk del curl

# create WORKDIR
WORKDIR /src

ENTRYPOINT ["/bin/ash", "-c"]
