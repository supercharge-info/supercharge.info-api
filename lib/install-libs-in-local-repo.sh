#==============================================================================
#
# This is ugly. The API depends on these jars/libs which are from keith's private
# repository. He (I) will remove these dependencies from the API as time permits. For
# now others can build/develop the API by running this script to install them
# in their local maven repo.
#
#
#==============================================================================
# exit script on any error
trap 'exit' ERR

LIB_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"


mvn org.apache.maven.plugins:maven-install-plugin:2.5.2:install-file -Dfile="${LIB_DIR}/redshift-common-1.26.jar"
