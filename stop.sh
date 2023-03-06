#!/bin/bash
docker kill supercharge-api
docker network disconnect supercharge-net supercharge-db
docker network rm supercharge-net
