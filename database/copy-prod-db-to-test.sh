#!/usr/bin/env bash
#====================================================================================
# Script for copying the latest data from the prod database into the local database.
#
#
# REQUIRES:
#   sudo apt install postgresql-client
#====================================================================================

# exit script on any error
trap 'exit' ERR


#------------------------------------------------------------------------------------
# dump
#------------------------------------------------------------------------------------
SRC_HOST="localhost"
SRC_PORT="5432"
SRC_USERNAME="supercharge_user"
SRC_DATABASE="postgres"
SRC_SCHEMA="supercharge"
OUT_SQL_DIR="/tmp/migration-dump-prod-$$"

echo "**** Enter PROD password for ${SRC_USERNAME} on ${SRC_HOST}:${SRC_PORT}"
pg_dump \
    --host=${SRC_HOST} \
    --port=${SRC_PORT} \
    --encoding=UTF-8 \
    --username=${SRC_USERNAME} \
    --dbname=${SRC_DATABASE} \
    --schema=${SRC_SCHEMA} \
    --blobs \
    --format=d \
    --verbose \
    --quote-all-identifiers \
    --jobs=2 \
    --file="${OUT_SQL_DIR}"


#------------------------------------------------------------------------------------
# restore
#------------------------------------------------------------------------------------
DST_USERNAME="supercharge_user_test"
DST_HOST="localhost"
DST_PORT="5432"
DST_DATABASE="test"
DST_SCHEMA="supercharge"


echo "ALTER SCHEMA ${DST_SCHEMA} RENAME TO ${DST_SCHEMA}_$$" | psql --username="${DST_USERNAME}" --host="${DST_HOST}" --port="${DST_PORT}" "${DST_DATABASE}"

echo "**** Enter password for ${DST_USERNAME} on TARGET database at ${DST_HOST}:${DST_PORT}"
pg_restore \
           --username="${DST_USERNAME}" \
           --host="${DST_HOST}" \
           --dbname="${DST_DATABASE}" \
           --port="${DST_PORT}" \
           --format=d \
           --verbose \
           --jobs=2 \
           "${OUT_SQL_DIR}"


echo "done"
