# TeamCity Agent docker image with PHP tools and docker-compose

This docker image contains the latest official TeamCity Agent Image by JetBrains with PHP building tools included.

Image contains:

* `PHP 7.0` with extensions `bz2`, `soap`, `curl`, `mbstring`, `pdo`, `xml`, `zip`
* ```zip``` package
* Composer
* Docker Compose

You can pull this image from DockerHub using

```docker pull rockmagicnet/teamcity-agent-php```

To access dockerized build tools on agent, such as [```rockmagicnet/sencha-cmd```](https://hub.docker.com/r/rockmagicnet/sencha-cmd/), the following run command should be used:

```
docker run -it -e SERVER_URL="<url to TeamCity server>" \
    -v docker_volumes:/var/lib/docker \
    --privileged -e DOCKER_IN_DOCKER=start \   rockmagicnet/teamcity-agent-php
```

For detailed instruction on configuring the agent, please refer to [JetBrains TeamCity Agent Image official page](https://hub.docker.com/r/jetbrains/teamcity-agent)