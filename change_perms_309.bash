#!/bin/bash

# script assumes www is in your home dir ~
# Turns dirs to 711 and files to 644
# By AlawadhiBOT

www_dir="$HOME/www"

# Change dir perms to 711
if ! find "$www_dir" -type d -exec chmod 711 {} \; ; then
    echo "Error: Failed to set directory permissions."
    exit 1
fi

# Change file perms to 644
if ! find "$www_dir" -type f -exec chmod 644 {} \; ; then
    echo "Error: Failed to set file permissions."
    exit 1
fi

echo "Complete!\n"
