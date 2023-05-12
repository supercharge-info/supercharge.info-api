# About

API for https://supercharge.info

# Development

## Local Setup

1. Java 14
2. Maven
3. Docker

## Build

- `mvn -DskipTests install`

## Run

`./database/rebuild-database.sh` (once, run as a user that can execute docker commands)
`./start.sh` (each time to start API and DB, run as a user that can execute docker commands)
`./stop.sh` (to clean up resources when done)

## Deploy

1. `mvn install` (verify tests pass)
2. `./release.sh` (enter to accept suggested release version)
3. `git push --tags origin <your-branch>` (to push release to origin)
4. `./deploy.sh <test|prod> <version>`

## Configuration

1. Local/development configuration is read from `classpath:/com/redshiftsoft/tesla/dev-config.properties`.
2. In test/prod the system property `api.config.location` specifies configuration file.
