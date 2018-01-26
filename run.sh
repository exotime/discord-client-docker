#!/bin/bash

# Sometimes this is needed to allow the container to talk to Xorg.
# If you're having problems connecting to the socket, try uncommenting this.
#xhost local:docker

docker run -it \
        -v /tmp/.X11-unix:/tmp/.X11-unix \
        -v /etc/localtime:/etc/localtime:ro \
        -v ${HOME}/.config/discord/:/root/.config/discord/ \
        -e DISPLAY=$DISPLAY \
        --device /dev/snd \
        exotime/discord-client-docker
