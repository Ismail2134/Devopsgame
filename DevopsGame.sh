#!/bin/sh
printf '\033c\033]0;%s\a' DevOps Game v0.9.0
base_path="$(dirname "$(realpath "$0")")"
"$base_path/DevopsGame.x86_64" "$@"
