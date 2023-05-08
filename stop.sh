#!/bin/bash
docker stop supercharge-api
docker stop supercharge-db
docker network disconnect supercharge-net supercharge-db
docker network rm supercharge-net
