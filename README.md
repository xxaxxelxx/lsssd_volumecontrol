# ***LSSSD | VOLUMECONTROL***
# Volumecontrol Module
# Part of Dockerized LIQUIDSOAP STREAM SILENCE DETECTOR

[xxaxxelxx/lsssd_volumecontrol](https://index.docker.io/u/xxxaxxelxx/lsssd_volumecontrol)

## Synopsis
This repo is the base for an [automated docker build](https://hub.docker.com/r/xxaxxelxx/lsssd_volumecontrol/) and is part of a dockerized distributed stream silence detector system consisting of following elements:
* [xxaxxelxx/lsssd_volumecontrol](https://github.com/xxaxxelxx/lsssd_volumecontrol)

The running docker container provides a service for very special stream silence detecting purposes usable for a distributed architecture.
It presumably will not fit for you, but it is possible to tune it. If you need some additional information, please do not hesitate to ask.

This [xxaxxelxx/lsssd_volumecontrol](https://hub.docker.com/r/xxaxxelxx/lsssd_volumecontrol/) repo is an essential part of a complex compound used for stream silence detection.
It stores all collected informations.

### Example
```bash
$ docker run -d --name volumecontrol --volumes-from storage -p 65522:22 --restart=always xxaxxelxx/xx_volumecontrol
```
***

## License

[MIT](https://github.com/xxaxxelxx/lsssd_volumecontrol/blob/master/LICENSE.md)
