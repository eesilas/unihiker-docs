#!/bin/bash

# Change to the directory of your git repository
echo "Script started: $(date)" >> ~/check.log
# Check for changes on the remote repository
if git fetch origin && [ `git rev-list HEAD...origin/master --count` != 0 ] ; then
    echo "+++++++" >> ~/check.log
    # If changes exist, pull the changes
    git pull
    echo "Script build: $(date)" >> ~/check.log
    # Build the project using mkdocs
    mkdocs build
    echo "Script build end: $(date)" >> ~/check.log
    # Restart the nginx service
    sudo systemctl restart nginx
    echo "restart end: $(date)" >> ~/check.log
fi
echo "----------" >> ~/check.log
