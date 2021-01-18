## bland328/gogs-bland328 Dockerfile
## Standard Gogs Docker container (gogs/gogs) with tweaks

FROM gogs/gogs:latest
USER root

# allow user git to execute files in any repo's custom_hooks directory as root, preserving env vars
RUN echo 'git ALL=(ALL) NOPASSWD:SETENV:/data/git/gogs-repositories/*/*/custom_hooks/*' >> /etc/sudoers

# Install packages
RUN apk update
RUN apk add python3
# RUN apk add py3-pip  # may need this at some point, if pip3 disappears in future Python packages under Alpine
RUN apk add sudo
RUN apk add file
RUN rm -rf /var/cache/apk/*

# Make python3 available as python (gentle cheat without needing to install update-alternatives)
RUN ln -fs python3 /usr/bin/python
