# docker build -t ptimof/ghost .
#
# Build from the official release
FROM ghost:1.5.1-alpine

MAINTAINER Tim Friedrich <info@jimtim.de>

# Add in better default config adapted from https://github.com/kitematic/ghost.git
COPY config.example.js config.example.js

# Fix ownership in src
RUN chown -R user $GHOST_INSTALL/content

# Default environment variables
ENV GHOST_URL http://my-ghost-blog.com
