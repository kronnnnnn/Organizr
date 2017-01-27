# Usage:

FROM alpine:latest
MAINTAINER T

#Install basic packages.
Run \ 
  apk add --update \
  git \
  python \
  && rm rf /var/cache/apk/*


# Install apache
RUN apk add --no-cache \
    apache2=2.4.23-r1 \
    apache2-utils=2.4.23-r1

RUN mkdir -p /run/apache2/

RUN mkdir p /opt/
  
  
# Environment Variables
ENV APP_DIR /var/www/html
ENV APPLICATION_ENV development

# Create/Set Directory
RUN mkdir -p $APP_DIR
WORKDIR $APP_DIR

EXPOSE 80
VOLUME $APP_DIR

