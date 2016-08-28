#!/bin/bash

source bash_tools.sh

echo_c "${RED}Creator overlay_ws/src directory${NC}"
mkdir -p overlay_ws/src
cd overlay_ws/src

echo_c "Init WorkSpace ROS"
wstool init

echo_c "Add ROS packages to source"
TUPLE_PACKAGES="(
			(nexus7-ros-pkg, git@github.com:yoyonel/nexus7-ros-pkg.git) 
			)"
USE_TUPLES_LIST "$TUPLE_PACKAGES" \
				'echo_c "- Add library $1 to the WorkSpace"' \
				'wstool set -y $1 --git $2'

echo_c "- Download sources from repos"
wstool update

wstool foreach 'git checkout indigo-devel'

cd -
