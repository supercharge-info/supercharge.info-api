# About

API for https://supercharge.info

# Development

## Local Setup

1. Java 14
2. Maven
3. Docker (currently used to create/run local test database)


## Build

- `lib/install-libs-in-local-repo.sh` (do this once, see script for details)
- `mvn -DskipTests install`

## Test

`./database/rebuild-database.sh` (once, run as user that can execute docker commands)

`mvn test`

## Deploy

1. Verify tests pass.
2. `deployable-build.sh` (enter to accept suggested release version)
3. `deploy.sh test <version>`

## Configuration

1. Local/development configuration is read from `classpath:/com/redshiftsoft/tesla/dev-config.properties`.
2. In test/prod the system property `api.config.location` specifies configuration file.