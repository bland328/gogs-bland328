## bland328/gogs-bland328 Dockerfile
## Standard Gogs Docker container with tweaks

FROM gogs/gogs:latest
USER root

# allow user git to execute files in any repo's custom_hooks directory as root, preserving env vars
RUN echo 'git ALL=(ALL) NOPASSWD:SETENV:/data/git/gogs-repositories/*/*/custom_hooks/*' >> /etc/sudoers

# Install packages
RUN apk add python3
RUN apk add sudo
RUN apk add file
