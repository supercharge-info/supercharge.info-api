#-------------------------------------------------------------------
# Dockerfile for our local dockerized postgres.
#
# Base image details: https://hub.docker.com/_/postgres
#-------------------------------------------------------------------
FROM postgres:12.6

# Run the SQL here upon database initialization.
ADD sql/* /docker-entrypoint-initdb.d/

