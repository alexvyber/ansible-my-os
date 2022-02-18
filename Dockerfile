FROM fedora:35 AS base
WORKDIR /usr/local/bin
RUN dnf update -y && \
    dnf install -y ansible && \
    dnf install -y curl git 
COPY . .
CMD ["sh", "-c", "/bin/bash"]

