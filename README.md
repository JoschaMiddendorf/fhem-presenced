# Docker container for FHEM PRESENCE/presenced
A supportative containerto run FHEM's [presenced](https://wiki.fhem.de/wiki/PRESENCE#Installation_von_.28le.29presenced) (part of the [PRECENSE module](http://fhem.de/commandref.html#PRESENCE)).

### Image flavors
This image provides 2 different variants:

- `latest` (default)
- `dev`

You can use one of those variants by adding them to the docker image name like this:

	docker pull homeautomationstack/fhem-presenced:latest

If you do not specify any variant, `latest` will always be the default.

`latest` will give you the current stable version.
`dev` will give you the latest development version.


### Supported platforms
This is a multi-platform image, providing support for the following platforms:


Linux:

- `x86-64/AMD64` [Link](https://hub.docker.com/r/homeautomationstack/fhem-presenced-amd64_linux/)
- `i386` [Link](https://hub.docker.com/r/homeautomationstack/fhem-presenced-i386_linux/)
- `ARM32v5, armel` [Link](https://hub.docker.com/r/homeautomationstack/fhem-presenced-arm32v5_linux/)
- `ARM32v7, armhf` [Link](https://hub.docker.com/r/homeautomationstack/fhem-presenced-arm32v7_linux/)
- `ARM64v8, arm64` [Link](https://hub.docker.com/r/homeautomationstack/fhem-presenced-arm64v8_linux/)


Windows:

- currently not supported


The main repository will allow you to install on any of these platforms.
In case you would like to specifically choose your platform, go to the platform.related repositories by clicking on the respective link above.

The platform repositories will also allow you to choose more specific build tags beside the rolling tags latest, current and dev.


## Usage

Please follow instructions on the [FHEM wiki page](https://wiki.fhem.de/wiki/PRESENCE#.C3.9Cberwachung_durch_verteilte_Agenten_in_der_Wohnung_.28presenced.2Flepresenced.2Fcollectord.29).

___
[Production ![Build Status](https://travis-ci.com/docker-home-automation-stack/fhem-presenced.svg?branch=master)](https://travis-ci.com/docker-home-automation-stack/fhem-presenced)

[Development ![Build Status](https://travis-ci.com/docker-home-automation-stack/fhem-presenced.svg?branch=dev)](https://travis-ci.com/docker-home-automation-stack/fhem-presenced)
