#!/bin/bash

PLUGIN_NAME="plugin-control"
TAG_MANAGER="../../tag-manager/scripting/include"
PING_CHECKER="../../ping-checker/scripting/include"
DOD_HOOKS="../../dod-hooks/scripting/include"

cd scripting
spcomp $PLUGIN_NAME.sp -i include -i $TAG_MANAGER -i $PING_CHECKER -i $DOD_HOOKS -o ../plugins/$PLUGIN_NAME.smx
