# Use latest alpine image as base
FROM alpine:latest

# Copy needed stuff into container
COPY LICENSE README.md /
COPY gitstart.sh /gitstart.sh

# Install some packages
RUN apk add jq bash git npm yarn

# Start action
ENTRYPOINT ["/gitstart.sh"]
