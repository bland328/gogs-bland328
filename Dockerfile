## bland328/gogs-bland328 Dockerfile
## Standard Gogs Docker container with tweaks

FROM gogs/gogs:latest

# Become root
USER root

# allow user git to execute files in any repo's custom_hooks directory as root, preserving env vars
RUN echo 'git ALL=(ALL) NOPASSWD:SETENV:/data/git/gogs-repositories/*/*/custom_hooks/*' >> /etc/sudoers

# Install python3
RUN apk add python3

# Install sudo
RUN apk add sudo
