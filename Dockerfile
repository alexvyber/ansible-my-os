FROM fedora:35 AS base
ARG TAGS
RUN dnf update -y && \
    dnf install -y ansible && \
    dnf install -y curl git 
COPY . .
RUN mkdir /ansible
WORKDIR /ansible
CMD ["sh", "-c", "/bin/bash"]
# CMD ["sh", "-c", "ansible-playbook $TAGS local.yml"]
