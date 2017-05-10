# Java Docker setup

[![Travis](https://travis-ci.org/JanJoris/java-docker-setup.svg?branch=master)](https://travis-ci.org/JanJoris/java-docker-setup)
[![CircleCI](https://circleci.com/gh/JanJoris/java-docker-setup.svg?style=svg)](https://circleci.com/gh/JanJoris/java-docker-setup)
[![codecov](https://codecov.io/gh/JanJoris/java-docker-setup/branch/master/graph/badge.svg)](https://codecov.io/gh/JanJoris/java-docker-setup)

Welcome to my sample project on how to setup a Java environment using [Docker][docker] and Visual Studio Code on Linux. This project uses 2 containers, one to build and debug the code, and a second one to run [coala][coala] validation tests.

The setup contains all the configuration you need to debug in vscode out of the box, simply press `F5` to run and once the container is up and running, press `F5` again to debug the code.

The code contains build files for [circle.io][circle] and [Travis][travis] while the coverage is being handled by [codecov][codecov]

You can play around with the code and validate the effects using the `makefile` commands `build` or `validate`.

Have fun!

[docker]: https://www.docker.com/
[coala]: https://coala.io/
[circle]: https://circleci.com
[travis]: https://travis-ci.org
[codecov]: https://codecov.io

