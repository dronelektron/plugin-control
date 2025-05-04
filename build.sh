#!/bin/bash

PLUGIN_NAME="plugin-control"

cd scripting
spcomp $PLUGIN_NAME.sp -o ../plugins/$PLUGIN_NAME.smx
