FROM alpine
RUN apk add --no-cache git xz
RUN git config --global advice.detachedHead false
COPY tarballize /usr/local/bin/
WORKDIR /a
ENTRYPOINT ["tarballize"]
