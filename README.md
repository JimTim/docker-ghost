# Ghost 1.5.1

# docker-ghost
Docker image that allows running [Ghost](https://github.com/TryGhost/Ghost) in production mode,
and is a bit more configurable than the [official Ghost Docker image](https://registry.hub.docker.com/_/ghost/).

## Why yet another container for Ghost?

The official container for Ghost is fine for running in development mode, but it has the wrong
permissions for running in production. That, and the config file doesn't have any easy way to tweak
it.

## Quickstart

```
docker run --name some-ghost -d jimtim/docker-ghost
```

This will start Ghost in development mode listening on the default port of 2368.

If you'd like to be able to access the instance from the host without the
contain's IP, standard port mappings can be used:

```
docker run --name some-ghost -p 80:2368 -d jimtim/docker-ghost
```

Then, access it via `http://localhost:80` or `http://host-ip:80` in a browser.

## Configuration

There are three environment variables that can be configured:

* `URL`: the URL of your blog (e.g., `http://www.example.com`)
* `MAIL__FROM`: the email of the blog installation (e.g., `'"Webmaster" <webmaster@example.com>'`)
* `MAIL__OPTIONS__HOST`: which host to send email to (e.g., `mail.example.com`)
* `USEMINFILES`: use minified files (false or true)

## Further reading

Ptimof has written a bit more about using Ghost as a Docker image:

* [Hacking on Ghost themes](https://www.timofejew.com/hacking-ghost-themes/): a development workflow for modifying a Ghost theme.
* [Moving to Docker: Ghost](https://www.timofejew.com/moving-to-docker-ghost/): Running Ghost as a production service in a container.
* [Moving to Docker: NGINX reverse proxy with SSL termination](https://www.timofejew.com/moving-to-docker-nginx/): a more complicated example of running Ghost in production, using NGINX to front-end Ghost, and Ghost using SASL (authenticated login) to a mail relay server.