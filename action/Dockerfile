# Use latest alpine image as base
FROM alpine:latest

# Copy needed stuff into container
COPY gitstart.sh /gitstart.sh

# Install some packages
RUN apk add jq bash git npm yarn
RUN echo "dads"

# Start action
ENTRYPOINT ["/gitstart.sh"]
