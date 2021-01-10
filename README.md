# gogs-bland328
Standard Gogs Docker container (gogs/gogs) with tweaks:
* `/etc/sudoers` allows user `git` to sudo scripts within `custom_hooks` directories, preserving env vars
* `sudo` installed
* `python3` installed
* `file` installed