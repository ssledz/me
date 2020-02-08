#!/bin/bash
docker build -t ssledz/me:latest .
docker run --rm -it --name me -p 4000:4000 ssledz/me:latest
