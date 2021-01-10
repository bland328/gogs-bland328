## bland328/gogs-bland328 Dockerfile
## Standard Gogs Docker container with tweaks

FROM gogs/gogs:latest

# Become root
USER root

# Tweak /etc/sudoers to allow user git to execute any file in any repo's custom_hooks directory as root
RUN echo 'git ALL=(ALL) NOPASSWD:/data/git/gogs-repositories/*/*/custom_hooks/*' >> /etc/sudoers

# Install python3
RUN apk add python3

# Install sudo
RUN apk add sudo
