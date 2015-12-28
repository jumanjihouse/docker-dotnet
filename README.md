DotNet Core on Linux
====================

[![Image Size](https://img.shields.io/imagelayers/image-size/jumanjiman/dotnet/latest.svg)](https://imagelayers.io/?images=jumanjiman/dotnet:latest 'View image size')&nbsp;
[![Image Layers](https://img.shields.io/imagelayers/layers/jumanjiman/dotnet/latest.svg)](https://imagelayers.io/?images=jumanjiman/dotnet:latest 'View image layers')&nbsp;
[![Docker Registry](https://img.shields.io/docker/pulls/jumanjiman/dotnet.svg)](https://registry.hub.docker.com/u/jumanjiman/dotnet)&nbsp;
[![Circle CI](https://circleci.com/gh/jumanjihouse/docker-dotnet.png?circle-token=f2af513102aef4eb6f4b27c957cb656a4030a9b5)](https://circleci.com/gh/jumanjihouse/docker-dotnet/tree/master 'View CI builds')

Project URL: [https://github.com/jumanjihouse/docker-dotnet](https://github.com/jumanjihouse/docker-dotnet)
<br />
Docker hub: [https://registry.hub.docker.com/u/jumanjiman/dotnet/](https://registry.hub.docker.com/u/jumanjiman/dotnet/)


Overview
--------

Provide a container to compile DotNet Core applications on Linux.


### Build integrity

CircleCI builds and publishes the image.

![workflow](assets/docker_hub_workflow.png)

An unattended test harness compiles a sample application from Microsoft.
If all tests pass on master branch in the unattended test harness,
it pushes the built images to the Docker hub.


### References

* [DotNet getting started](https://dotnet.github.io/core/getting-started/)


How-to
------

### Pull an already-built image

These images are built as part of the test harness on CircleCI.
If all tests pass on master branch, then the image is pushed
into the docker hub.

    docker pull jumanjiman/dotnet:latest

The "latest" tag always points to the latest version.
Additional tags provide a way to correlate any image to a git commit from this repo.


### Build the docker image

Build an image locally on a host with Docker:

    docker build --rm -t dotnet -f Dockerfile.alpine .

Run a container interactively from the built image:

    docker run --rm -it dotnet bash



Licenses
--------

All files in this repo are subject to LICENSE (also in this repo).
I chose MIT license because the trivial sample app from Microsoft is MIT-licensed.
