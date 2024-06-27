# Use the latest Ubuntu image
FROM ubuntu:latest

# Install common network troubleshooting and utility tools
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    vim \
    iproute2 \
    dnsutils \
    net-tools \
    traceroute \
    iputils-ping \
    tcpdump \
    && rm -rf /var/lib/apt/lists/*

# Set the default command to keep the container running
CMD ["tail", "-f", "/dev/null"]
