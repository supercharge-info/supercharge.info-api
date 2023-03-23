#!/bin/bash
#=================================================================================================
#
# Increments the version to a non-snapshot version and builds a release version of the deployable
# war file.
#
#=================================================================================================



mvn -Darguments=-DskipTests -DautoVersionSubmodules -DpushChanges=false clean release:prepare release:clean
