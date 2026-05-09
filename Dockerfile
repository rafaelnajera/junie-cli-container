# Use a slim Debian image for a small footprint
FROM debian:stable-slim

# Install dependencies required by Junie CLI and Git for repository access
RUN apt-get update && apt-get install -y \
    curl \
    git \
    bash \
    unzip \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /tmp

# Install Junie CLI
RUN curl -fsSL https://junie.jetbrains.com/install.sh  | bash

# Add Junie to PATH
ENV PATH="/root/.local/bin:${PATH}"

# Set the working directory to where your project will be mounted
WORKDIR /code

# Default command to run Junie
ENTRYPOINT ["junie"]