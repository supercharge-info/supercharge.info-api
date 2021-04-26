#!/bin/bash
#=================================================================================================
#
# Deploy API to test or production.
#
#=================================================================================================

# exit script on any error
trap 'exit' ERR

ENV=$1
if [[ "$1" = "test" ]]; then
    REMOTE_HOST="super01.supercharge.info"
    REMOTE_USER="tomcat_test"
    REMOTE_DIR="latest/webapps/"
elif [[ "$1" = "prod" ]]; then
    REMOTE_HOST="super01.supercharge.info"
    REMOTE_USER="tomcat"
    REMOTE_DIR="latest/webapps/"
else
    echo "unknown environment: ${ENV}";
    printf "usage: deploy <test|prod> <version> \n\n";
    exit;
fi


#--------------------------------------------
# check arguments
#--------------------------------------------
if [[ "$#" -ne 2 ]]; then
    printf "usage: deploy <test|prod> <version> \n\n";
    exit;
fi

#--------------------------------------------
# check for existence of deploy artifact
#--------------------------------------------
VERSION="$2"
LOCAL_WAR="service-war/target/service-war-${VERSION}.war"

if [[ ! -f "${LOCAL_WAR}" ]]; then
    printf "ERROR: File not found: ${LOCAL_WAR} \n\n"
    exit;
fi

#--------------------------------------------
# prompt, are you sure
#--------------------------------------------
echo "##########################################################";
echo "REMOTE_HOST = ${REMOTE_HOST}"
echo "REMOTE_USER = ${REMOTE_USER}"
echo "REMOTE_DIR  = ${REMOTE_DIR}"
echo "##########################################################";

echo ""
printf "Deploy ${LOCAL_WAR} \n\n"
read -p "Are you sure? [y/n]: " -n 1 -r
if [[ $REPLY =~ ^[Nn]$ ]]
then
    printf "\n\nExiting\n\n";
    exit;
fi

#--------------------------------------------
# deploy
#--------------------------------------------
printf "\n\n"
printf "Copying to ${REMOTE_HOST}\n"

scp ${LOCAL_WAR} ${REMOTE_USER}@${REMOTE_HOST}:service.war

printf "Moving to application server's webapps directory...\n"

ssh "${REMOTE_USER}@${REMOTE_HOST}" "mv service.war ${REMOTE_DIR}"

printf "Finished \n "
