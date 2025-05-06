#!/bin/bash

PLUGIN_NAME="plugin-control"
TAG_MANAGER="../../tag-manager/scripting/include"
PING_CHECKER="../../ping-checker/scripting/include"

cd scripting
spcomp $PLUGIN_NAME.sp -i include -i $TAG_MANAGER -i $PING_CHECKER -o ../plugins/$PLUGIN_NAME.smx
