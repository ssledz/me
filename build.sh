#!/bin/bash
docker build -t ssledz/me:latest .
mkdir -p _site
docker run --rm -it --name me -u $(id -u ${USER}):$(id -g ${USER}) -v $(pwd)/_site:/blog/_site ssledz/me:latest /bin/sh -c 'jekyll clean; jekyll build';
