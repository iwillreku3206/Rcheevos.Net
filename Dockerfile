FROM ubuntu:24.10

WORKDIR /build

# Volume for output (/out)
VOLUME out

# Copy necessary directories
COPY rcheevos /build

# Install dependencies
RUN apt-get update
RUN apt-get install -y build-essential clang

# Compile Command: gcc -O3 -fPIC -shared -s -o /out/rcheevos -Iinclude -Ircheevos/include -DRC_CLIENT_SUPPORTS_RAINTEGRATION -DRC_CLIENT_SUPPORTS_EXTERNAL `find rcheevos/src | grep "\.*\.c$"`

ENTRYPOINT ["/bin/bash", "-c", "yes"]