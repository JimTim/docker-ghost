# docker build -t ptimof/ghost .
#
# Build from the official release
FROM ghost:alpine

MAINTAINER Tim Friedrich <info@jimtim.de>

# Add in better default config adapted from https://github.com/kitematic/ghost.git
ADD config.example.js config.example.js

# Fix ownership in src
RUN chown -R user $GHOST_SOURCE/content

# Default environment variables
ENV GHOST_URL http://my-ghost-blog.com
