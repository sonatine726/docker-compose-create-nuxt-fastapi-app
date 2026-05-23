#!/bin/sh
set -eu

CHECK_INIT_FILE_PATH='.inited'
if [ ! -e $CHECK_INIT_FILE_PATH ]; then
    touch $CHECK_INIT_FILE_PATH
    echo "Install packages at only Initial run"
    uv sync
fi

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"
