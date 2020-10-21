#!/bin/sh
docker inspect --format='{{range .NetworkSettings.Networks}}{{println .IPAddress}}{{end}}' $(docker ps --format '{{.ID}}')