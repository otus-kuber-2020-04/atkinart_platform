#!/usr/bin/env bash
tag=$(date '+%Y%m%d%H%M')
docker build -t aatkin/nginx:otus-${tag} -t aatkin/nginx:latest .
docker push aatkin/nginx:latest
docker push aatkin/nginx:otus-${tag}
