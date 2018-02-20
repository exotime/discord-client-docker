# Discord Client in a Docker container

[![](https://images.microbadger.com/badges/image/exotime/discord-client-docker.svg)](https://microbadger.com/i$


A container built on Debian Stretch, this contains all of the dependencies needed
to run the official Discord client.

Nice for when you don't want your host to have all the dependencies installed,
or you'd like some isolation between the Discord package and the rest of your
machine.

## How to run:
To run the container from the prebuilt image on [Docker Hub](https://hub.docker.com/r/exotime/discord-client-docker/), run this:

```shell
    $ docker run -it \
            -v /tmp/.X11-unix:/tmp/.X11-unix \
            -v /etc/localtime:/etc/localtime:ro \
            -v ${HOME}/.config/discord/:/root/.config/discord/ \
            -e DISPLAY=$DISPLAY \
            --device /dev/snd \
            exotime/discord-client-docker
```

## How to build it for yourself:

Building the container locally is also easy:

```shell
    $ git clone https://github.com/exotime/discord-client-docker
    $ cd discord-client-docker
    $ docker build .
```
