# Builds an environment for IAHSPEurope.com Melia
#
# Environment: Melia
# @author Duane Leem <duane@stagedhomes.com>
#
# Build Local Image
# 1. docker build -t iahspeurope-melia:0.0.3 .
# 2. Update docker-compose.yaml to use new image.

FROM wordpress:5.5.1-php7.3-apache

# General OS and package updates.
RUN apt-get update && apt-get install -y \
  git-core \
  libxml2-dev

# Configure WP-CLI
COPY ./artifacts/wp-cli.phar /usr/local/bin/wp
RUN ["chmod", "+x", "/usr/local/bin/wp"]
