FROM ubuntu:24.10

WORKDIR /build

# Volume for output (/out)
VOLUME out

# Copy necessary directories
COPY . /build

# Install dependencies
RUN apt-get update
RUN apt-get install -y build-essential clang

ENTRYPOINT ["/bin/bash", "-c", "yes"]
