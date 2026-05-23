#!/bin/sh
set -eu

CHECK_INIT_FILE_PATH='.inited'
if [ ! -e $CHECK_INIT_FILE_PATH ]; then
    echo "Install packages at only Initial run"
    yarn --cwd "${APP_DIR}" install
    touch $CHECK_INIT_FILE_PATH
fi

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"
